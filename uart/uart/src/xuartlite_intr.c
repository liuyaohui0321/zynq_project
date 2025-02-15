/******************************************************************************
*
* Copyright (C) 2002 - 2015 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/
/******************************************************************************/
/**
*
* @file xuartlite_intr_example.c
*
* This file contains a design example using the UartLite driver (XUartLite) and
* hardware device using the interrupt mode.
*
* @note
*
* The user must provide a physical loopback such that data which is
* transmitted will be received.
*
* MODIFICATION HISTORY:
* <pre>
* Ver   Who  Date     Changes
* ----- ---- -------- -----------------------------------------------
* 1.00a jhl  02/13/02 First release
* 1.00b rpm  10/01/03 Made XIntc declaration global
* 1.00b sv   06/09/05 Minor changes to comply to Doxygen and coding guidelines
* 2.00a ktn  10/20/09 Updated to use HAL Processor APIs and minor changes
*		      for coding guidelnes.
* 3.2   ms   01/23/17 Added xil_printf statement in main function to
*                     ensure that "Successfully ran" and "Failed" strings
*                     are available in all examples. This is a fix for
*                     CR-965028.
* </pre>
******************************************************************************/

/***************************** Include Files *********************************/

#include "xparameters.h"
#include "xuartlite.h"
#include "xscugic.h"
#include "xil_exception.h"
#include "xil_printf.h"
#include "xuartlite_l.h"

/************************** Constant Definitions *****************************/

/*
 * The following constants map to the XPAR parameters created in the
 * xparameters.h file. They are defined here such that a user can easily
 * change all the needed parameters in one place.
 */
#define UARTLITE_DEVICE_ID      XPAR_UARTLITE_0_DEVICE_ID
#define INTC_DEVICE_ID          XPAR_SCUGIC_SINGLE_DEVICE_ID
#define UARTLITE_INT_IRQ_ID     XPAR_FABRIC_UARTLITE_0_VEC_ID
#define RX_NOEMPTY XUL_SR_RX_FIFO_VALID_DATA // 接收 FIFO 非空
/*
 * The following constant controls the length of the buffers to be sent
 * and received with the UartLite device.
 */
#define TEST_BUFFER_SIZE        32
#define UART_TX_BUFFER_BASE		(0x80000000 + 0x00900000)
u8 *UartRxBufferPtr;

/**************************** Type Definitions *******************************/


/***************** Macros (Inline Functions) Definitions *********************/


/************************** Function Prototypes ******************************/

int UartLiteIntr(u16 DeviceId);
u8 a=0;

int SetupInterruptSystem(XScuGic *intc,XUartLite *UartLitePtr);

//void SendHandler(void *CallBackRef, unsigned int EventData);
//
//void RecvHandler(void *CallBackRef, unsigned int EventData);

/************************** Variable Definitions *****************************/

 XUartLite UartLite;            /* The instance of the UartLite Device */

 XScuGic InterruptController;     /* The instance of the Interrupt Controller */

/*
 * The following variables are shared between non-interrupt processing and
 * interrupt processing such that they must be global.
 */

/*
 * The following buffers are used in this example to send and receive data
 * with the UartLite.
 */
u8 SendBuffer[TEST_BUFFER_SIZE];
u8 ReceiveBuffer[TEST_BUFFER_SIZE];

/*
 * The following counters are used to determine when the entire buffer has
 * been sent and received.
 */
static volatile int TotalReceivedCount;
static volatile int TotalSentCount;


/****************************************************************************/
/**
*
* This function does a minimal test on the UartLite device and driver as a
* design example. The purpose of this function is to illustrate
* how to use the XUartLite component.
*
* This function sends data and expects to receive the same data through the
* UartLite. The user must provide a physical loopback such that data which is
* transmitted will be received.
*
* This function uses interrupt driver mode of the UartLite device. The calls
* to the UartLite driver in the handlers should only use the non-blocking
* calls.
*
* @param	DeviceId is the Device ID of the UartLite Device and is the
*		XPAR_<uartlite_instance>_DEVICE_ID value from xparameters.h.
*
* @return	XST_SUCCESS if successful, otherwise XST_FAILURE.
*
* @note
*
* This function contains an infinite loop such that if interrupts are not
* working it may never return.
*
****************************************************************************/
int UartLiteIntr(u16 DeviceId)
{
	int Status;
	UartRxBufferPtr = (u8 *)UART_TX_BUFFER_BASE;


	/*
	 * Initialize the UartLite driver so that it's ready to use.
	 */
	Status = XUartLite_Initialize(&UartLite, DeviceId);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Perform a self-test to ensure that the hardware was built correctly.
	 */
	Status = XUartLite_SelfTest(&UartLite);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}


	/*
	 * Connect the UartLite to the interrupt subsystem such that interrupts can
	 * occur. This function is application specific.
	 */
	Status = SetupInterruptSystem(&InterruptController,&UartLite);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Setup the handlers for the UartLite that will be called from the
	 * interrupt context when data has been sent and received, specify a
	 * pointer to the UartLite driver instance as the callback reference so
	 * that the handlers are able to access the instance data.
	 */
//	XUartLite_SetSendHandler(&UartLite, SendHandler, &UartLite);
//	XUartLite_SetRecvHandler(&UartLite, RecvHandler, &UartLite);

	/*
	 * Enable the interrupt of the UartLite so that interrupts will occur.
	 */
	XUartLite_EnableInterrupt(&UartLite);

	return XST_SUCCESS;
}

/*****************************************************************************/
/**
*
* This function is the handler which performs processing to send data to the
* UartLite. It is called from an interrupt context such that the amount of
* processing performed should be minimized. It is called when the transmit
* FIFO of the UartLite is empty and more data can be sent through the UartLite.
*
* This handler provides an example of how to handle data for the UartLite,
* but is application specific.
*
* @param	CallBackRef contains a callback reference from the driver.
*		In this case it is the instance pointer for the UartLite driver.
* @param	EventData contains the number of bytes sent or received for sent
*		and receive events.
*
* @return	None.
*
* @note		None.
*
****************************************************************************/
//void SendHandler(void *CallBackRef, unsigned int EventData)
//{
//	TotalSentCount = EventData;
//	xil_printf("Send interrupt occurred. Bytes sent: %d\r\n", TotalSentCount);
//}

/****************************************************************************/
/**
*
* This function is the handler which performs processing to receive data from
* the UartLite. It is called from an interrupt context such that the amount of
* processing performed should be minimized.  It is called data is present in
* the receive FIFO of the UartLite such that the data can be retrieved from
* the UartLite. The size of the data present in the FIFO is not known when
* this function is called.
*
* This handler provides an example of how to handle data for the UartLite,
* but is application specific.
*
* @param	CallBackRef contains a callback reference from the driver, in
*		this case it is the instance pointer for the UartLite driver.
* @param	EventData contains the number of bytes sent or received for sent
*		and receive events.
*
* @return	None.
*
* @note		None.
*
****************************************************************************/
//void RecvHandler(void *CallBackRef, unsigned int EventData)
//{
//	XUartLite *UartLitePtr = (XUartLite *)CallBackRef;
//	TotalReceivedCount = EventData;
//	xil_printf("Receive interrupt occurred. Bytes received: %d\r\n", TotalReceivedCount);
//
//	// Echo received data back
//	XUartLite_Send(UartLitePtr, ReceiveBuffer, TotalReceivedCount);
//}

void uart_handler(void *CallbackRef)//中断处理函数
{
    u8 Read_data,i=0;
    u32 isr_status;
    XUartLite *InstancePtr= (XUartLite *)CallbackRef;
    i=a;
#if 1
    //读取状态寄存器
    isr_status = XUartLite_ReadReg(InstancePtr->RegBaseAddress ,
                                   XUL_STATUS_REG_OFFSET);
    if(isr_status & RX_NOEMPTY){ //接收 FIFO 中有数据
    	//读取数据
        Read_data=XUartLite_ReadReg(InstancePtr->RegBaseAddress ,
                                    XUL_RX_FIFO_OFFSET);
		UartRxBufferPtr[i]=Read_data;
        //发送数据
        XUartLite_WriteReg(InstancePtr->RegBaseAddress ,
                           XUL_TX_FIFO_OFFSET, Read_data);
        // 清除中断标志
        XUartLite_WriteReg(InstancePtr->RegBaseAddress, XUL_STATUS_REG_OFFSET, RX_NOEMPTY);
    }

#endif
#if  0// 另一种写法
	   Read_data=XUartLite_RecvByte(InstancePtr->RegBaseAddress);
	   XUartLite_SendByte(InstancePtr->RegBaseAddress,Read_data);
#endif
	   a++;
}


/****************************************************************************/
/**
*
* This function setups the interrupt system such that interrupts can occur
* for the UartLite device. This function is application specific since the
* actual system may or may not have an interrupt controller. The UartLite
* could be directly connected to a processor without an interrupt controller.
* The user should modify this function to fit the application.
*
* @param    UartLitePtr contains a pointer to the instance of the UartLite
*           component which is going to be connected to the interrupt
*           controller.
*
* @return   XST_SUCCESS if successful, otherwise XST_FAILURE.
*
* @note     None.
*
****************************************************************************/
int SetupInterruptSystem(XScuGic *intc,XUartLite *UartLitePtr)
{

	int status;
	XScuGic_Config *intc_cfg;
	intc_cfg = XScuGic_LookupConfig(INTC_DEVICE_ID);
	if (NULL == intc_cfg)
		return XST_FAILURE;
	status = XScuGic_CfgInitialize(intc, intc_cfg,
			intc_cfg->CpuBaseAddress);
	if (status != XST_SUCCESS)
		return XST_FAILURE;

	//设置并打开中断异常处理功能
	Xil_ExceptionInit();
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
			(Xil_ExceptionHandler)XScuGic_InterruptHandler,
			(void *)intc);
	Xil_ExceptionEnable();

	//为中断设置中断处理函数
	XScuGic_Connect(intc, UARTLITE_INT_IRQ_ID,
			(Xil_ExceptionHandler) uart_handler,(void *) UartLitePtr);
	//设置UART的中断触发方式
	//设置优先级和触发类型
	XScuGic_SetPriorityTriggerType(intc, UARTLITE_INT_IRQ_ID, 0xA0, 0x3);
	//使能GIC中的串口中断
	XScuGic_Enable(intc, UARTLITE_INT_IRQ_ID);
	return XST_SUCCESS;
}

