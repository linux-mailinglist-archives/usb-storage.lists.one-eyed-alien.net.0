Return-Path: <usb-storage+bncBC4YX2O26AKBBN7LTTWQKGQENWQIKEY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-yb1-xb45.google.com (mail-yb1-xb45.google.com [IPv6:2607:f8b0:4864:20::b45])
	by mail.lfdr.de (Postfix) with ESMTPS id ACBB7D956A
	for <lists+usb-storage@lfdr.de>; Wed, 16 Oct 2019 17:22:35 +0200 (CEST)
Received: by mail-yb1-xb45.google.com with SMTP id o123sf19480620ybc.2
        for <lists+usb-storage@lfdr.de>; Wed, 16 Oct 2019 08:22:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571239354; cv=pass;
        d=google.com; s=arc-20160816;
        b=qzuTJlQotpYS9iiOlj3P8DwTP7Y9E2/JxIIDPhxvn65px7i84f8F0Lj5OT9JsVIJ2J
         qwvD2MaW2EFxMIMz0p2N/r1wTxl7lY153mj4Yu/ygg+J4KKX3pkh7ue54OZ0CqwMNqTS
         4Ei/SdVG31Dusl6ZgeR8qPwoK7FkFUBcyC2rhEEkZfL48p68AoMqcKVLN0CdhP65k4x2
         lSh7DbC4+sx+GStSC1mJdri33c6x+zmNfKodeqLqt3QHqOusnTh7pICsLSpw6OFE9MMs
         X0EuKg6L7bT2dbuMNboWsUnzaaCpPVdKxBfsyNhxqH2WUTEvSuUH4uEt1oWme4sHHTFb
         44KQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature;
        bh=M9t2DJ/lSWOb/TN68VGdjLJ46d2FrK06IDmKOFRI2cU=;
        b=f8Ya1SSmhV5sUZsw6bSG7xybJIITw8w72NbZIfo6zh57JiKFZDGEB6ytzv9IXkOuFE
         i2CwIrEVoBC5lEP3ubHi5KSvtBAffGfo8zmKGxRVtyLT+WTXCOD5Lm5c8e68jDh4gDpQ
         l2MqnRUZpEUj3UFVD/ZzN4b15BpXVc44svhMXoObXvBXeOCVoG4vjG7KoBfLXV51a+OG
         ygLY2lFCi022PjkBYOrTsJEmwxtZEWMd2eqrR2y1RsWn/KwOPKbHjfMjXGvzYx9eTsem
         C1Cmcfq6Nec0DlDMITo/bCzLzgCNtrd8ny2PnbyBKgTt0wQECBdPBmTawpglVZqTiRf8
         KTUw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=quQrLnOX;
       spf=pass (google.com: domain of zzoru007@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=zzoru007@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=M9t2DJ/lSWOb/TN68VGdjLJ46d2FrK06IDmKOFRI2cU=;
        b=a2G5BYptMnZ3hOSXfyADbM3zNlsjH1RhPiENSUfAVM8WPLmCfOcpaWUy0YKEBGjuZt
         FMLkwr6YvKW1tMgJXVOq6Tfr2jPBN6rEk2OCv7NyblK1jjeDwAZviBgwTfx3lxJIyfcb
         eZpMxel7Nz+nnEnsdlEEOqY6LaTWO7WhR2/oY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:date:message-id:subject
         :to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=M9t2DJ/lSWOb/TN68VGdjLJ46d2FrK06IDmKOFRI2cU=;
        b=jvJw6Av+rF8svcTRrqCDacLfl/5wOch2PZ+/ey7fHafGU0Am1SHaeKVm09xziIqDD+
         ZGA6aDGJp9M9bpEdZOWbP5xUaPi0nJUOpuoYBkFBiG/GTfguqGih/metfzjO0Xigvs+Y
         BHbjbbTYEkNUyTTXG1DWfL8o0hSQE+h/8lj1HH311LyDgnsJ5kSwguW0scEf5kE15C/m
         +5RSBoA68kHpdZ80sr7huGEhprZFrm5cBRUL1BAAdJcDPJnGjR92meQIgjbLbS4aTJcc
         Dffxi8pxiLkDRqMagrK/FxTHKpopkilMFUL/dKhFQr6dPLbIzwwjqkYBQ86zAslC+jdV
         mreQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAWM6ne0ZI9xnrlReDv8avVAbsnGr4IXZZ/YM98CtDeZEXKUCk0r
	Cpo0Wxr4Obxg69w4w7AGvfLAGw==
X-Google-Smtp-Source: APXvYqzu9sHT896Y+o4X6W/65dKmqamV2sx4TerlbavFCHoNuD24Gj3RTCXDkMYJAvGmED3eCv8jCg==
X-Received: by 2002:a25:1d84:: with SMTP id d126mr29203395ybd.512.1571239354578;
        Wed, 16 Oct 2019 08:22:34 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a81:34c5:: with SMTP id b188ls3686590ywa.2.gmail; Wed, 16
 Oct 2019 08:22:31 -0700 (PDT)
X-Received: by 2002:a81:7c0b:: with SMTP id x11mr20777240ywc.385.1571239351742;
        Wed, 16 Oct 2019 08:22:31 -0700 (PDT)
Received: by 2002:a81:9c08:0:0:0:0:0 with SMTP id m8msywa;
        Wed, 16 Oct 2019 02:22:11 -0700 (PDT)
X-Received: by 2002:a81:6a83:: with SMTP id f125mr18365221ywc.266.1571217731322;
        Wed, 16 Oct 2019 02:22:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571217731; cv=none;
        d=google.com; s=arc-20160816;
        b=rIJIOgAUFzMurAU3eczfVuUq9++p3nTLigSn5E7pTPJjJ+jmZk0WwCJpmUT2SA28CC
         6jZYPdGt7/EFiN7BxRqkvVE6rzIsAeyyBmMWnqXdwZudgMfPtY5VYf4r2PFVG++TYaoe
         njDu4stkwaJJAxSPeam2GOYvFOTA/BY+313mlsZMpeVu2kxUVlgRV6BcT/lDbIxgUPqf
         HRQkQGXiSwzuwii1v/UpIvGfbvUtfXOE+ye16ilpgm36JIOemQalVg1CLwMuIQjjSmwv
         WHWSp1YqXQjanMmy1aIm1pR6W73eWCa014NSLlEMBrRbgMgV/7emWiyR+6RAI+FDjDV+
         xhzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=fE2pjCnbjKZ4MlHeVN9jf9xQvMsEbh3Ui9qBwYYhdik=;
        b=FHeB8oQM0i38NMeY81huCI0GMEUpB4pAROPdsLLsExH/XtMYnS03DQu/MBEtI/wcGG
         D7iDsBJl02gM2wEHfb/jY5GkKOajLQL4d/HanIZVQ6lr6rzNQyVPKsJ9s/DAgnua1Rbv
         ySGJTNPRIemKCibaCr6r1hmT0yCz7KjW1LoEtFR2/Av0NMjDNmhM8be2q0pXJuCW7kdO
         a9uCfDzIAcd1q8AH/0Q7vVAeYNE/wnLEo10YC/2hapH0ON7jrXVT79xQumqGcnPdZP+d
         CbRDVa0clC/5np3WlCvPHTwqAmUZT6hT2UMVoQghv+88ZjojqOYrjfrBcS/SSDpXaayA
         mESw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=quQrLnOX;
       spf=pass (google.com: domain of zzoru007@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=zzoru007@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id 65sor14038612ywg.62.2019.10.16.02.22.11
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Wed, 16 Oct 2019 02:22:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of zzoru007@gmail.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:a0d:fa01:: with SMTP id k1mr19961558ywf.326.1571217730743;
 Wed, 16 Oct 2019 02:22:10 -0700 (PDT)
MIME-Version: 1.0
From: zzoru <zzoru007@gmail.com>
Date: Wed, 16 Oct 2019 02:21:59 -0700
Message-ID: <CALRZ7UuEBvMtL6Q3TOKjXdh9B4X5bcHUdbO7i20TmPShZHmKZg@mail.gmail.com>
Subject: [usb-storage] WARNING in __alloc_pages_nodemask
To: stern@rowland.harvard.edu, gregkh@linuxfoundation.org, 
	linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net, 
	LKML <linux-kernel@vger.kernel.org>
Cc: dokyungs@uci.edu, syzkaller <syzkaller@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: zzoru007@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=quQrLnOX;       spf=pass
 (google.com: domain of zzoru007@gmail.com designates 209.85.220.65 as
 permitted sender) smtp.mailfrom=zzoru007@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
X-Google-Group-Id: 960895140360
List-Post: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/post>,
 <mailto:usb-storage@lists.one-eyed-alien.net>
List-Help: <https://support.google.com/a/lists.one-eyed-alien.net/bin/topic.py?topic=25838>,
 <mailto:usb-storage+help@lists.one-eyed-alien.net>
List-Archive: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/>
List-Subscribe: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/subscribe>,
 <mailto:usb-storage+subscribe@lists.one-eyed-alien.net>
List-Unsubscribe: <mailto:googlegroups-manage+960895140360+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/subscribe>

We found the following crash on Linux 5.4-rc1 (Not patched in current
HEAD commit 3b1f00aceb7a67bf079a5a64aa5c6baf78a8f442)
with our customized syzkaller.

WARNING: CPU: 0 PID: 12 at linux/mm/page_alloc.c:4727
__alloc_pages_nodemask+0x333/0x760 linux/mm/page_alloc.c:4727
Kernel panic - not syncing: panic_on_warn set ...
CPU: 0 PID: 12 Comm: kworker/0:1 Not tainted 5.4.0-rc1
Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS
rel-1.12.1-0-ga5cab58e9a3f-prebuilt.qemu.org 04/01/2014
Workqueue: usb_hub_wq hub_event
Call Trace:
 __dump_stack linux/lib/dump_stack.c:77 [inline]
 dump_stack+0x7c/0xbb linux/lib/dump_stack.c:113
 panic+0x205/0x48e linux/kernel/panic.c:220
 __warn+0x19c/0x1c0 linux/kernel/panic.c:581
 report_bug+0x1a9/0x2b0 linux/lib/bug.c:195
 fixup_bug.part.11+0x32/0x80 linux/arch/x86/kernel/traps.c:179
 fixup_bug linux/arch/x86/include/asm/irqflags.h:54 [inline]
 do_error_trap+0xf5/0x160 linux/arch/x86/kernel/traps.c:272
 do_invalid_op+0x31/0x40 linux/arch/x86/kernel/traps.c:291
 invalid_op+0x23/0x30 linux/arch/x86/entry/entry_64.S:1028
RIP: 0010:__alloc_pages_nodemask+0x333/0x760 linux/mm/page_alloc.c:4727
Code: fe ff ff 65 48 8b 04 25 00 ef 01 00 48 05 68 10 00 00 41 bc 01
00 00 00 48 89 44 24 40 e9 2a fe ff ff 81 e7 00 20 00 00 75 02 <0f> 0b
45 31 e4 e9 6e ff ff ff 41 f7 c6 00 00 40 00 0f 84 2c ff ff
RSP: 0018:ffff88801a1a6f60 EFLAGS: 00010246
RAX: 0000000000000000 RBX: 1ffff11003434def RCX: 0000000000000000
RDX: 0000000000000000 RSI: 0000000000000034 RDI: 0000000000000000
RBP: ffffffffffffff5e R08: ffffed1002d261a2 R09: dffffc0000000000
R10: 0000000000000001 R11: ffffed1002d261a1 R12: ffffffffffffff5e
R13: 0000000000000dc0 R14: ffff888017140000 R15: 0000000000000034
 alloc_pages linux/include/linux/gfp.h:509 [inline]
 kmalloc_order+0x16/0x50 linux/mm/slab_common.c:1294
 kmalloc_order_trace+0x18/0x110 linux/mm/slab_common.c:1306
 kmalloc linux/include/linux/slab.h:557 [inline]
 kzalloc linux/include/linux/slab.h:686 [inline]
 init_realtek_cr+0x2ec/0x1440 linux/drivers/usb/storage/realtek_cr.c:990
 usb_stor_acquire_resources linux/drivers/usb/storage/usb.c:784 [inline]
 usb_stor_probe2+0x738/0xbb0 linux/drivers/usb/storage/usb.c:1047
 realtek_cr_probe+0x9b/0xe0 linux/drivers/usb/storage/realtek_cr.c:1048
 usb_probe_interface+0x2b9/0x870 linux/drivers/usb/core/driver.c:361
 really_probe+0x444/0x830 linux/drivers/base/dd.c:548
 driver_probe_device+0xe3/0x250 linux/drivers/base/dd.c:721
 __device_attach_driver+0x17a/0x1e0 linux/drivers/base/dd.c:828
 bus_for_each_drv+0x143/0x1e0 linux/drivers/base/bus.c:430
 __device_attach+0x1f1/0x310 linux/drivers/base/dd.c:894
 bus_probe_device+0x1d7/0x280 linux/drivers/base/bus.c:490
 device_add+0xb72/0x1660 linux/drivers/base/core.c:2201
 usb_set_configuration+0xaca/0x1840 linux/drivers/usb/core/message.c:2023
 generic_probe+0x63/0xd0 linux/drivers/usb/core/generic.c:210
 usb_probe_device+0x89/0xd0 linux/drivers/usb/core/driver.c:266
 really_probe+0x444/0x830 linux/drivers/base/dd.c:548
 driver_probe_device+0xe3/0x250 linux/drivers/base/dd.c:721
 __device_attach_driver+0x17a/0x1e0 linux/drivers/base/dd.c:828
 bus_for_each_drv+0x143/0x1e0 linux/drivers/base/bus.c:430
 __device_attach+0x1f1/0x310 linux/drivers/base/dd.c:894
 bus_probe_device+0x1d7/0x280 linux/drivers/base/bus.c:490
 device_add+0xb72/0x1660 linux/drivers/base/core.c:2201
 usb_new_device+0x784/0x10d0 linux/drivers/usb/core/hub.c:2536
 hub_port_connect linux/drivers/usb/core/hub.c:5098 [inline]
 hub_port_connect_change linux/drivers/usb/core/hub.c:5213 [inline]
 port_event linux/drivers/usb/core/hub.c:5359 [inline]
 hub_event+0x18ed/0x3610 linux/drivers/usb/core/hub.c:5441
 process_one_work+0x8b5/0x17c0 linux/kernel/workqueue.c:2269
 worker_thread+0x82/0xb80 linux/kernel/workqueue.c:2415
 kthread+0x325/0x3e0 linux/kernel/kthread.c:255
 ret_from_fork+0x24/0x30 linux/arch/x86/entry/entry_64.S:352
Dumping ftrace buffer:
   (ftrace buffer empty)
Kernel Offset: disabled

Following is my analysis of this bug. (Just add some comments in source code):

realtek_cr.c:
struct rts51x_chip {
    u16 vendor_id;
    u16 product_id;
    char max_lun; // char -> signed 1byte
    ...
}

static int init_realtek_cr(struct us_data *us)
{
    int size, i, retval;
    ...
    us->max_lun = chip->max_lun = rts51x_get_max_lun(us); // From USB
device (-127~126) Malicious usb device can manipulate this value.

    size = (chip->max_lun + 1) * sizeof(struct rts51x_status); // Can
be negative integer or 0 (-1+1).

    chip->status = kzalloc(size, GFP_KERNEL); //  kzalloc(0) ==
ZERO_SIZE_PTR or kzalloc(negative integer) -> Warning

    ...

    for (i = 0; i <= (int)(chip->max_lun); i++) {
        retval = rts51x_check_status(us, (u8) i);
        ...
    }
}

tatic int rts51x_check_status(struct us_data *us, u8 lun)
{
    struct rts51x_chip *chip = (struct rts51x_chip *)(us->extra);
    int retval;
    u8 buf[16];

    retval = rts51x_read_status(us, lun, buf, 16, &(chip->status_len));
    if (retval != STATUS_SUCCESS)
        return -EIO;

    usb_stor_dbg(us, "chip->status_len = %d\n", chip->status_len);

    chip->status[lun].vid = ((u16) buf[0] << 8) | buf[1]; //
ZERO_SIZE_PTR DEREFERENCE :(
    chip->status[lun].pid = ((u16) buf[2] << 8) | buf[3];
    chip->status[lun].cur_lun = buf[4];
    chip->status[lun].card_type = buf[5];
    chip->status[lun].total_lun = buf[6];
    chip->status[lun].fw_ver = ((u16) buf[7] << 8) | buf[8];
    chip->status[lun].phy_exist = buf[9];
    chip->status[lun].multi_flag = buf[10];
    chip->status[lun].multi_card = buf[11];
    chip->status[lun].log_exist = buf[12];
    if (chip->status_len == 16) {
        chip->status[lun].detailed_type.detailed_type1 = buf[13];
        chip->status[lun].function[0] = buf[14];
        chip->status[lun].function[1] = buf[15];
    }
    return 0;
}

Need to change a declaration of max_lun. (u8)

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/CALRZ7UuEBvMtL6Q3TOKjXdh9B4X5bcHUdbO7i20TmPShZHmKZg%40mail.gmail.com.
