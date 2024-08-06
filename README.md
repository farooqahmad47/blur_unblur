**Description:**
This Oracle APEX plugin initially blurs text in Interactive Reports (IR) and Classic Reports (CR). The text unblurs when the mouse moves over it, providing a dynamic visual effect.

**Features:**
Initial Blur: Text in specified report regions starts blurred.
Mouse Move Effect: Text unblurs when the mouse moves over it, enhancing user interaction.
Customization: Easily configurable for different report regions.

**Query**
select EMPNO, ENAME, EMP_CELL, EMP_EMAIL, 'black' as blur, 'red' inner, 'green' outer, 17 as font_size from EMP_INFO;

![image](https://github.com/user-attachments/assets/5f025853-9a70-40e3-b663-aa1f717a63a5)
