Return-Path: <usb-storage+bncBDTNDO5RRYJRBFWLWOUQMGQE6GKZYXI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x547.google.com (mail-ed1-x547.google.com [IPv6:2a00:1450:4864:20::547])
	by mail.lfdr.de (Postfix) with ESMTPS id 41CB07CA076
	for <lists+usb-storage@lfdr.de>; Mon, 16 Oct 2023 09:26:15 +0200 (CEST)
Received: by mail-ed1-x547.google.com with SMTP id 4fb4d7f45d1cf-52f274df255sf5785213a12.1
        for <lists+usb-storage@lfdr.de>; Mon, 16 Oct 2023 00:26:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1697441175; cv=pass;
        d=google.com; s=arc-20160816;
        b=szgVHZQHZlfBLZxK9UkPxoZ+9YM66f+ngQg07wHoz/50eUFX9QNVWR9Rux+G8fG5I8
         RMawIOX5XV6C6KQgpIm3iIWSa+UPrIPcxnJLXctumFkbADY0I8qyv2+K3AO5Ci3Z3znY
         pnHVrm+WVBoeZwvg9dj+K9KzD+T8WshIWFmXKWPBzq4pW9Y/emYYM5IxN/WiRVg0URc8
         8L3L4n7jNpu7rnowXOeOk91FInST98m1BpnYjKkmsSdFrwZI+CzuRDrslNgmmRoVxpuM
         HOUKpG4dhFbgsN2BCF64bg15A7nbxomwVvSDS8Trw8OscbpBKHQuteHml96WfIl7UPpl
         zLEg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=LJbPbrHJY77uzeun5Ghx0vQBhkY0eMACZ1Pm9njWj9k=;
        fh=qb5W/8HITKC89mNaBbNAGCcLaXj6l7L8f0MvdHCcfUs=;
        b=au5ERykl/0vUJa1wP8CdupBV6Y9gcKtgItxP9X1lOTp8Jzo+ItVIOFjuyj3Dcb6HEr
         /ZWzoXWb9cHXXV96+LmeFR0NqLIrm4Hui3hUQQKBGu6qzBSGkc5D7jgmpAMTaHatYgx5
         UCv+a5DiBiDpACbXX4tWycCXSyKApFynAZH+iVBPPeLYt6QUuk9dVeCTAIweCqylsuCq
         CNiYsDahQbPG9lQPR9N/Le1g73xJ/MMkt8QDJIZIQHKJ6w33ZcEaqbuMx2csRd/SvBR9
         PB3Q72Nae7p7FMLzLNzrgkewqb7ihAKWPbt5p9GCrvUDYZOgnrAKIkUqgS1QKcLS0R0v
         B2Ow==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=cFg0ZYQk;
       spf=pass (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=gmazyland@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1697441175; x=1698045975; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LJbPbrHJY77uzeun5Ghx0vQBhkY0eMACZ1Pm9njWj9k=;
        b=NftQmKio96Q/B85SFpESU11/x6quRZYvDUSlOj6XBPTQgxAEVQy8C1PTJk1j/L7ZzC
         fC8jRhDthFBdzlGsXqUUfNsxKgk48IhQRqJ/0NtaIB87ws8mj7lPN2TNDYDC2mvn/hcK
         LNgWSJ9dFAC2/2h0oQjX7n+3lki+JzAinS3nk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697441175; x=1698045975;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LJbPbrHJY77uzeun5Ghx0vQBhkY0eMACZ1Pm9njWj9k=;
        b=LUm6b1sgwonRaMkjfDBkPVUVwy8Qnf0ltsMJ4FnCL6IOaWF9yXvp+GGDYHqgvXfTnK
         NQjuzE7dpAmQy9yl5I/VHaVhwtnERP0gm85rCJprQCTkk0LDXyRk0Uy4O0rOncyHhT8q
         zvwMq7z5XtDR6sfJwzcQmCSh9j5WrcHQZ9+GkRSHLAGt6vQQj82Sdo9QJMs4Qn/BQodZ
         sQkDCsshGdSWwig0/fF/8mHW1csLm9FJwWnzWJXW0b9W3kexeazaEYox47e/3bwUqyAX
         La9XhHqiCQ+ZnbLYoKmf+Az+NjB0sgPUQxpkzSaUvyqj1+gHnDGLvOJo67qOjTzNY4T3
         YIZg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOJu0YzMXGlCsiZfwColtnH6bPS2IcijL+Xozulqnh867VFixuW2ABO1
	DuShMgTFKXDmKFwHXivsRnsQkA==
X-Google-Smtp-Source: AGHT+IFROUfGdVMgQtPeQrlQgRFqgN4APZ+jRe2RCzyYuKgMRW6ArIISyWg5T/C5aXuU0KXbrtHAGw==
X-Received: by 2002:a50:8dcb:0:b0:53e:b5df:8651 with SMTP id s11-20020a508dcb000000b0053eb5df8651mr2486853edh.7.1697441174731;
        Mon, 16 Oct 2023 00:26:14 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6402:f09:b0:525:b947:ff2 with SMTP id
 i9-20020a0564020f0900b00525b9470ff2ls374920eda.1.-pod-prod-00-eu; Mon, 16 Oct
 2023 00:26:13 -0700 (PDT)
X-Received: by 2002:a17:906:db0e:b0:98e:4f1:f987 with SMTP id xj14-20020a170906db0e00b0098e04f1f987mr5797816ejb.3.1697441173139;
        Mon, 16 Oct 2023 00:26:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1697441173; cv=none;
        d=google.com; s=arc-20160816;
        b=qQDSko6B3pT0WrlYmMnY1UzONMWKIGgw+BXMJFy0ETsn5ByCrNk1Z7zIjcsi9C68xI
         glUp/PuBcTgyC/VuWAMIyjJPlVytvG+0cAJKXpbEEUmNqkUC8gp5MD2rv3uKb1j+86Lk
         o/B/SdwzbNvDBE+v9slgCi8vawpiCunioz2lH2nVBmMNeSYQs3o0OgCziI4rTrulRDT4
         zKPf/1nlqxcELNCp+2Gi6Q+1Tk0CKWI7f/HEFTYsrbEPliJoA1LxPyXFujeY2gbdHNl7
         iATrm3dz/E6RLJpi4QaXHrE2uOHvoNwYgpV3Xp70bjfde3TQOAGt24FcRqrIZTtkqZFV
         N7Mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=jIF366p2fSWvwuEAKrDTEGDfvFAKQAfN3wG9+11Etbo=;
        fh=qb5W/8HITKC89mNaBbNAGCcLaXj6l7L8f0MvdHCcfUs=;
        b=mx8IJjrPmw7C40t33TfOcVddSdUXfXIiYNA7VdmEnhCQ0b4UYjOtK9jI6fnJ+axb5D
         0At/r8Qi4K90ZLayBdtlNub+kOWS3x3+k7JgTJySK19nlY2SVGMP7jtjRVA4diDDw5aI
         bzo67sEe3z/1JFfNOHHzqy3Im7z4pI4ZcRV3ZJZD0aTkvgoTEOWUiXK5eJhB2ekqopmG
         RZoKIOk5DBzdmHueZIFUW4yMTNTVLR5NRJdQBI7QOx4PeH0lPwp42nBKcZ0PV5FlFAbw
         tvOr8lUFMVjXHuFtDaHaNDomRj/ZMjUuftPP7KBz4K/sVSldviY/zXFKSLQ7HFE2dqTo
         Elmg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=cFg0ZYQk;
       spf=pass (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=gmazyland@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id he13-20020a1709073d8d00b009ae3cdf2ba3sor1366019ejc.3.2023.10.16.00.26.13
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Mon, 16 Oct 2023 00:26:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:a17:907:3f12:b0:9ad:e3fd:d46c with SMTP id hq18-20020a1709073f1200b009ade3fdd46cmr7060305ejc.10.1697441172388;
        Mon, 16 Oct 2023 00:26:12 -0700 (PDT)
Received: from sauvignon.fi.muni.cz ([2001:718:801:22c:bdcb:518:be8f:6a76])
        by smtp.gmail.com with ESMTPSA id n25-20020a17090673d900b0099297782aa9sm3399980ejl.49.2023.10.16.00.26.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Oct 2023 00:26:12 -0700 (PDT)
From: Milan Broz <gmazyland@gmail.com>
To: linux-usb@vger.kernel.org
Cc: usb-storage@lists.one-eyed-alien.net,
	linux-scsi@vger.kernel.org,
	stern@rowland.harvard.edu,
	gregkh@linuxfoundation.org,
	oneukum@suse.com,
	Milan Broz <gmazyland@gmail.com>
Subject: [usb-storage] [PATCH 0/7] usb-storage,uas: Support OPAL commands on
 USB attached devices.
Date: Mon, 16 Oct 2023 09:25:57 +0200
Message-ID: <20231016072604.40179-1-gmazyland@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231006125445.122380-1-gmazyland@gmail.com>
References: <20231006125445.122380-1-gmazyland@gmail.com>
MIME-Version: 1.0
X-Original-Sender: gmazyland@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=cFg0ZYQk;       spf=pass
 (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=gmazyland@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
Content-Type: text/plain; charset="UTF-8"
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
X-Spam-Checked-In-Group: usb-storage@lists.one-eyed-alien.net
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

This patchset adds support for OPAL commands (self-encrypted drives)
through USB-attached storage (usb-storage and UAS drivers).

The related SCSI change was sent in a separate patch
https://lore.kernel.org/linux-scsi/20231016070211.39502-1-gmazyland@gmail.com/

The first part (64-bit quirks) is generic and will be needed later anyway
once new flags appear.

1) Patches 1-5 only add support for 64-bit quirks for USB storage
(unfortunately, USB device info can be 32-bit on 32-bit platforms,
and we are out of space for flags now).

2) Patches 6-7 enable OPAL commands on USB devices and adds
IGNORE_OPAL quirk. The last patch uses the flag for Realtek 9210
devices that do not behave correctly.

More info

1) 64bit USB storage quirk flags

The quirks are transferred through the device info value, which
is unsigned long (and as a part of USB infrastructure, it cannot
be changed).
After discussion on the USB list, I used high bit as an indicator
that the values need to be translated/unpacked to 64bit
(while lower values are used directly).

This is implemented through a host-compiled program that
generates device tables and uses a translation function.
As both usb-storage and UAS drivers share a lot of headers and
definitions, we need to generate separate files for usb-storage
and UAS. Note that due to the linking of both UAS and mass-storage
together, it must use separate names for translation tables.

(I also tried to use a statically generated array for flags,
but this increased the size of drivers significantly and
the code was quite ugly...)

2) Support for OPAL on USB attached storage.

The main support for OPAL on USB-attached storage is
straightforward (it depends on ATA-12 pass-thru support
for security commands).
Patch 6 enables the SCSI security flag for USB mass storage
and UAS device by default.

During device detection, the USB driver (mass-storage, UAS) enables
the security driver flag to allow SED OPAL code to run OPAL discovery
command for the device. If it receives a correct reply, OPAL is enabled
for the device. If not (or if SCSI command is rejected), OPAL
remains disabled.

Enabling OPAL support may uncover many issues, as OPAL-locked devices
often tend to generate errors on the locked range.

Anyway, cryptsetup will soon support OPAL devices, and I think support
for USB devices is a nice feature that enables users to unlock drives
even if they are attached through USB adapters.

There are also bugs in firmware implementations, so I added a quirk
flag that can disable security commands for particular devices.

The last patch uses this quirk for Realtek 9210, which seems to support
OPAL commands, but after configuring OPAL locking range, it also sets
the write-protected flag for the whole device.
This is perhaps a bug in firmware (all versions I tried), and I will
report that later to Realtek.


Milan Broz (7):
  usb-storage: remove UNUSUAL_VENDOR_INTF macro
  usb-storage,uas: make internal quirks flags 64bit
  usb-storage: use fflags index only in usb-storage driver
  usb-storage,uas: use host helper to generate driver info
  usb-storage,uas: do not convert device_info for 64-bit platforms
  usb-storage,uas: enable security commands for USB-attached storage
  usb-storage,uas: disable security commands (OPAL) for RT9210 chip
    family

 .../admin-guide/kernel-parameters.txt         |   2 +
 drivers/usb/storage/Makefile                  |  28 +++
 drivers/usb/storage/alauda.c                  |   2 +-
 drivers/usb/storage/cypress_atacb.c           |   2 +-
 drivers/usb/storage/datafab.c                 |   2 +-
 drivers/usb/storage/ene_ub6250.c              |   2 +-
 drivers/usb/storage/freecom.c                 |   2 +-
 drivers/usb/storage/isd200.c                  |   2 +-
 drivers/usb/storage/jumpshot.c                |   2 +-
 drivers/usb/storage/karma.c                   |   2 +-
 drivers/usb/storage/mkflags.c                 | 235 ++++++++++++++++++
 drivers/usb/storage/onetouch.c                |   2 +-
 drivers/usb/storage/realtek_cr.c              |   2 +-
 drivers/usb/storage/scsiglue.c                |   4 +
 drivers/usb/storage/sddr09.c                  |   2 +-
 drivers/usb/storage/sddr55.c                  |   2 +-
 drivers/usb/storage/shuttle_usbat.c           |   2 +-
 drivers/usb/storage/uas-detect.h              |   6 +-
 drivers/usb/storage/uas.c                     |  29 +--
 drivers/usb/storage/unusual_devs.h            |  11 +
 drivers/usb/storage/unusual_uas.h             |  11 +
 drivers/usb/storage/usb-ids.h                 |  37 +++
 drivers/usb/storage/usb.c                     |  44 ++--
 drivers/usb/storage/usb.h                     |   7 +-
 drivers/usb/storage/usual-tables.c            |  38 +--
 include/linux/usb_usual.h                     |   2 +
 26 files changed, 385 insertions(+), 95 deletions(-)
 create mode 100644 drivers/usb/storage/mkflags.c
 create mode 100644 drivers/usb/storage/usb-ids.h

-- 
2.42.0

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20231016072604.40179-1-gmazyland%40gmail.com.
