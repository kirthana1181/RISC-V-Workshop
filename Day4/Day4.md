# 1) Introduction to Simple RISC-V Micro-architecture

**L1. Micro-architecture of Single Cycle RISC-V CPU**
**L2. Starting Point Code for RISC-V Labs Part-1**
<img width="959" alt="day4_lab1" src="https://github.com/user-attachments/assets/0bfb9515-9fb5-4b6a-a50c-ad9a1e277cfe" />
**L3. Starting Point Code for RISC-V Labs Part-2**
![Screenshot 2025-05-07 144452](https://github.com/user-attachments/assets/bc9fdaaa-9c5c-48e7-922e-e2a26a16c7d6)

# 2) Fetch & Decode
**L1. Implementation Plan and Lab for PC**

**L2. Lab For Instruction Fetch Logic**
<img width="958" alt="day4_lab2" src="https://github.com/user-attachments/assets/296e5a0f-ed59-441e-9625-39da51553b24" />

**L3_Lab For RV Instruction Types IRSBJU Decode Logic**

<img width="959" alt="day4_lab3" src="https://github.com/user-attachments/assets/28aab7c1-8ba6-4d4f-b6f9-3c84703ff4f1" />

<img width="959" alt="day4_lab3ii" src="https://github.com/user-attachments/assets/7a0950bb-242f-4217-a4be-e08b11dc87f0" />

**L4_Lab For Instruction Immediate Decode Logic For RV-ISBUJ**

<img width="959" alt="day4_lab4" src="https://github.com/user-attachments/assets/67ec715b-bedb-4f44-8343-db305b3655f2" />

<img width="959" alt="day4_lab4_op" src="https://github.com/user-attachments/assets/fae8a24e-1bfa-452e-b747-b103c82d33d1" />

**L5_Lab To Decode other Fields of Instructions For RV-ISBUJ**

<img width="959" alt="day4_lab5" src="https://github.com/user-attachments/assets/d58d757c-dbdd-4e4a-9101-6e7967c9f2ac" />

**L6_Lab To Decode Instruction Field Based on Instr Type RV-ISBUJ**

<img width="959" alt="day4_lab6_fetch decode" src="https://github.com/user-attachments/assets/bab23f18-3932-4923-8f52-254c4c7fbce2" />

**L7_Lab To Decode Individual Instruction**

![day4_lab7_instrDecode](https://github.com/user-attachments/assets/071faf8d-8dc7-4177-ad4d-769a9cfe129b)

# 3) Control Logic
**For Implementing Branch Instructions, the register file read option for the RF is coded**
<img width="959" alt="day4_ctrlLogic_lab1" src="https://github.com/user-attachments/assets/5439ee8f-7e97-4904-aeb0-e2b2c2e5b5b9" />
**ALU Operations are programmed**
<img width="959" alt="day4_ctrlLogic_lab2" src="https://github.com/user-attachments/assets/5e86abd0-3e1e-422e-a272-7726be226338" />
**The register file write logic is programmed as shown**
<img width="959" alt="day4_ctrlLogic_lab3_rfwrite" src="https://github.com/user-attachments/assets/e230c2d3-7633-4a3c-a413-78519cfb9485" />

In the following labs I implemented the branch instructions and included the logic for deciding branch instruction through *taken_br* and *br_tgt_pc*.

***My final code as of Day4 is here -> https://myth.makerchip.com/sandbox/0zpfRhB9N/08qh6Vk# or Day4/BasicRISCVarch.tlv***

