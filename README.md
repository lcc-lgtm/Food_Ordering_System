# Food Ordering System

A DOS-based Point-of-Sale (POS) simulation for a small bakery/café, written entirely in **8086/x86 Assembly** (TASM/MASM). Runs in DOSBox.
---

## Features 

- **Customer Ordering Menu** — Browse product categories (Buns / Cakes) and place orders
- **Payment Simulation** — Supports Cash and TnG (e-wallet QR) payment methods
- **Receipt Printing** — Auto-generates an itemized receipt after checkout
- **Admin Login System** — Password-protected admin panel with retry limit
- **Sales Report** — Tracks quantity sold and revenue per product, plus daily total
- **Change Password** — Admin can update the login password
- **New Day Reset** — Clears order/sales data to start a fresh business day

## Menu

| Product| Price |
|---|---|
| Cheese Bun | RM 2.00 |
| Potato Bun | RM 3.00 |
| Chocolate Cake | RM 4.00 |
| Banana Cake | RM 5.00 |

## Built With 
- x86 Assembly (TASM/MASM syntax)
- INT 21H (DOS services) / INT 10H (BIOS video services)
- Tested on DOSBox 0.74-3

## How to Run 

```bash
# Assemble and link (using TASM)
tasm lccfos.asm
tlink lccfos.obj

# Run in DOSBox
lccfos.exe

# Current own file position: C:\8086\...

# Commands FLOWS ：
1. Z:\> MOUNT C C:\8086
   Drive C is mounted as local directory c:\8086\
   
2. Z:\> C:

3. C:\> MASM Food_Ordering_System.ASM
   Microsoft (R) Macro Assembler Version 5.00
   Copyright (C) Microsoft Corp 1981-1985, 1987. All rights reserved.

   Object filename [...OBJ]:
   Source listing  [NUL.LST]:
   Cross-reference [NUL.CRF]:

   51506  +  415886  Bytes symbol space free

       0 Warning Errors
       0 Severe  Erroes

 4. C:\> LINK Food_Ordering_System.OBJ;
    Microsoft (R) Overlay Linker  Version 3.60
    Copyright (C) Microsoft Corp 1983-1987.  All rights reserved.

    Run File [...EXE]:
    List File [NUL.MAP]:
    Libraries [.LIB]:

5. C:\> Food_Ordering_System.EXE

6. ...In program...


```

## Screenshots 
<img width="634" height="383" alt="image" src="https://github.com/user-attachments/assets/91bb8f51-ccee-43d7-bcdb-4e05d467bd00" />
<img width="637" height="386" alt="image" src="https://github.com/user-attachments/assets/c02eafcd-9adc-4206-bc12-2a144785673e" />
<img width="637" height="383" alt="image" src="https://github.com/user-attachments/assets/c1777aab-5fcf-4038-a2ab-dc4d0f88fb22" />
<img width="635" height="386" alt="image" src="https://github.com/user-attachments/assets/ba373420-cb87-4fa4-a017-b91df34417b0" />
<img width="636" height="390" alt="image" src="https://github.com/user-attachments/assets/586073c4-8d50-4f6e-94e6-36e23c1462db" />
<img width="637" height="388" alt="image" src="https://github.com/user-attachments/assets/1ef34232-a13f-4838-a78b-19b72f7bc925" />

<img width="635" height="380" alt="image" src="https://github.com/user-attachments/assets/6d9b5351-817d-430d-a3aa-1cfd9d6d8724" />
<img width="634" height="392" alt="image" src="https://github.com/user-attachments/assets/edd304fd-a3dd-49d9-87c4-9b826cb26c5e" />
<img width="633" height="384" alt="image" src="https://github.com/user-attachments/assets/2978e3c9-0380-4e44-a181-9a115567f9f3" />
<img width="636" height="389" alt="image" src="https://github.com/user-attachments/assets/0d22fc2c-76bc-4f9b-a484-8c67d39265cc" />
<img width="634" height="384" alt="image" src="https://github.com/user-attachments/assets/bf27a90a-36ea-481e-a08b-87c618bb8a58" />


## 📄 License

This project is licensed under the MIT License.
