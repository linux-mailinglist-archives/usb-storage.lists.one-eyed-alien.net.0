Return-Path: <usb-storage+bncBDTNDO5RRYJRBIEHQCUQMGQEFC4JR5I@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x548.google.com (mail-ed1-x548.google.com [IPv6:2a00:1450:4864:20::548])
	by mail.lfdr.de (Postfix) with ESMTPS id 671BE7BB82A
	for <lists+usb-storage@lfdr.de>; Fri,  6 Oct 2023 14:54:57 +0200 (CEST)
Received: by mail-ed1-x548.google.com with SMTP id 4fb4d7f45d1cf-537efd62f36sf1758748a12.2
        for <lists+usb-storage@lfdr.de>; Fri, 06 Oct 2023 05:54:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1696596897; cv=pass;
        d=google.com; s=arc-20160816;
        b=FIUq65Eoi4DMG2wlNHbOEFe27l7BKJwd0eVOsXbZ3EQjwadFI2jI4Q1mQz/UX0bFmw
         +dCt6P2jbDlGHxGNtbB12CXE4GH5l0g+V5lDvA2F1rhAcBDy55tsdpNe2x7gNAnZqmMa
         JZ5uK3yZG9R7vPoH0ihaUrAl0Zb8VBtscf0B2OLTov1RIoaJdYYuIx/ReSpo+iiRZiJB
         lwcxvXQO8eDG3UjGYd+gRFQfVFO3D6559emlYphkM+3F/Z1Vc98fod7uAQM9YpgaMU04
         ZedW7qkuv6p4WXf6ebllAc3aYziXbn9QSnw0malk2gFL0jsEjWis+LsiUt6hVrGxIWrQ
         yRpA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=qZvqg2Zo5ixxMDu0p33PDSTJuqk5dyEd9pkeCEVjVuE=;
        fh=a0TltY5qNwl0Oa9ebjgPj0wI1noiSzhlLA8n7ahwZlA=;
        b=jZR0E66pVdjg6gPOTzWcaoxyN8rzSmKQRi812BiOnTvM0Ga08N+krLBy+VP6YdIph9
         M5Qd+a1RP4/+o52gOtqDURBVCPvNIwlKgehp3kNu9qmeqU4L3H0jA26R4MnGXCYPKk3i
         /Poo1bAEGoZ2rcK/XTxTmr6pCqXQLwsfYlOI+Lt0UmuS2XO2W98X5I7czzS0PRzyiPaD
         TM+UBQ4Shml/9c0uf0N45WntFQ91A6jldHXNTZC34TY8B1aF4huNKtbkLGCP97RwWJmG
         dMxNOMjwP1yxWSVqs+540jO4mOhkJ9kQAfKI/bM5C0+zpEJpCmWJcm6n7PTOGFbhzuKg
         orCQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=VpfqC+BU;
       spf=pass (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=gmazyland@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1696596897; x=1697201697; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=qZvqg2Zo5ixxMDu0p33PDSTJuqk5dyEd9pkeCEVjVuE=;
        b=iZjr9eb+HBxsE47WWs3Y/dDuyKxWVPT6dztDnvBc8bWTQCYTBeZdzAo+q2mLdGb+5d
         6WaaRBK2bmhlxys+JJ6ZrzzlvBF48I9fSaMmibp5aBHglhQE6pcjb13SsW5jATPj7QAT
         AjTeDKcw8csk3AKZq1ILF92Sh/xVQttNhAim4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696596897; x=1697201697;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=qZvqg2Zo5ixxMDu0p33PDSTJuqk5dyEd9pkeCEVjVuE=;
        b=FmjfCS6xUCEp9cLHRtx1PmBcbX8MwAktQS5RHORAbqWEysEXSqSw5TI746i40FLd7t
         NCDjqvaJMQYNi7p5q3epdMzFoxc8rjHgML/Jxpd2oRKl3mnBe/jLYgezXjqrzzQulyAE
         UeXNE7mgtBl+KZTRYl0Gv/3kWHwx9ZkWmwmwOj1ShBoi7lS/gL8eCqArA0FdgNkgg6z3
         VCI3+c/WTpKeDGDa6zY5BAX4fNNtDcdt3JBEp7Ur0VJP4Lcr1QOcmaK+NjCiNN4b9Trj
         +nNe6J8FoVzUKxYrcC7uv6j4nft/GB9xH0b1SXvyK0SdcDpvkKqvV4HBoRJnPAqPBb0A
         GbiA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOJu0YwE5s1v4pjur2Hv9+Ksd0wQm4bxJAlv8HkbVCjiMRqksUWJDOqz
	NTMZUh6Xf1NVlk6+fS5DD46FTg==
X-Google-Smtp-Source: AGHT+IHNckPnHNdyBW9oUXlJSf0A3X0YzEPihxKRGYnRc+aybLk1z3JZy2+zqerWKWfMbZKp0PV/Tg==
X-Received: by 2002:aa7:d947:0:b0:531:9c1:8271 with SMTP id l7-20020aa7d947000000b0053109c18271mr7483463eds.14.1696596896864;
        Fri, 06 Oct 2023 05:54:56 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6402:1d84:b0:53a:a59e:de80 with SMTP id
 dk4-20020a0564021d8400b0053aa59ede80ls111011edb.2.-pod-prod-09-eu; Fri, 06
 Oct 2023 05:54:55 -0700 (PDT)
X-Received: by 2002:a17:907:7890:b0:9ae:711d:7e03 with SMTP id ku16-20020a170907789000b009ae711d7e03mr7531776ejc.15.1696596895128;
        Fri, 06 Oct 2023 05:54:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1696596895; cv=none;
        d=google.com; s=arc-20160816;
        b=VVUDjX6E1j132b3p93CTDxjQUNTuePesVBexmgNlzf4zKJf2TfJbq6g3FberaEL1sk
         FkPepigRDoCEhErfVT3ufF3/wAZNDTc7UvCcevJJuoivDoZ1p2UXBXyR79UdwfBTeRru
         CxsRoLiE2WDr/M/2JT8vKXS6bVG/IQF58uRY0EJe+hO9hu1GxN99nawXNZV15KaNhPbF
         rgrM5MLosJ/ST+SMtL5nRqa1lCJdIMDl3ApnVrvLOqB6jZizfld7UnxzDqwR74UO+1oD
         hiJ5JmVhPgiNdqbF8trhobP6Wta1FgoUzKlBZzqsQT/r9Y6/43UJjxSVFOBqPbkkhAY5
         QiYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=gecE+vOGFjARaQC/nlEr7rWoc3kbi1x64ECe3si5O9A=;
        fh=a0TltY5qNwl0Oa9ebjgPj0wI1noiSzhlLA8n7ahwZlA=;
        b=N3kpRkmLUl7To72l2dswGXPUs53zBRGS97iK4yPJS2Wnrf7z9ZfjYA9zYTbzr99Fdg
         7idCxZHe0s/nLAmFQ6p0GtoX1WEq7Pk7INTYmtc/9tundiJTZ3yF+NF6lJtL2vmLKURN
         cKwsikgLNFQFCFiXlTynk410eXbxqkrA8HKjSLqU7nr0cnYLf+8kAbUkC4gjiwjLDYjX
         a7d8Kz9ghZ4D5LPJNVnVG3wczLsl7uHAetxD4s5LqtQDYNBKBBIhiZ7AH4IiZVvBO3Z2
         OZAwJ0KGtIfN8WwpjJtUOscINBi/nNuAIGjO0d61Mc0p5/x2qwH+VARaP4TqYwvvU+uG
         oTMg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=VpfqC+BU;
       spf=pass (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=gmazyland@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id ht7-20020a170907608700b009adae264441sor1554611ejc.21.2023.10.06.05.54.55
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Fri, 06 Oct 2023 05:54:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:a17:906:1da1:b0:9ba:65e:752b with SMTP id u1-20020a1709061da100b009ba065e752bmr368474ejh.39.1696596894512;
        Fri, 06 Oct 2023 05:54:54 -0700 (PDT)
Received: from sauvignon.fi.muni.cz (laomedon.fi.muni.cz. [147.251.42.107])
        by smtp.gmail.com with ESMTPSA id p26-20020a1709060dda00b0099bc08862b6sm2894660eji.171.2023.10.06.05.54.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Oct 2023 05:54:53 -0700 (PDT)
From: Milan Broz <gmazyland@gmail.com>
To: linux-usb@vger.kernel.org
Cc: usb-storage@lists.one-eyed-alien.net,
	linux-scsi@vger.kernel.org,
	linux-block@vger.kernel.org,
	stern@rowland.harvard.edu,
	oneukum@suse.com,
	jonathan.derrick@linux.dev,
	Milan Broz <gmazyland@gmail.com>
Subject: [usb-storage] [RFC PATCH 0/6] usb-storage,uas,scsi: Support OPAL
 commands on USB attached devices.
Date: Fri,  6 Oct 2023 14:54:39 +0200
Message-ID: <20231006125445.122380-1-gmazyland@gmail.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
X-Original-Sender: gmazyland@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=VpfqC+BU;       spf=pass
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

1) Patches 1-4 only add support for 64-bit quirks for USB storage
(unfortunately, USB device info can be 32-bit on 32-bit platforms,
and we are out of space for flags now).

2) Patches 5-6 enable OPAL commands on USB device and also adds
an ATA-12 pass-thru wrapper to support OPAL even on devices that
do not support SCSI SECURITY IN/OUT commands.
ATA-12 is already used by sedutils directly; this patch makes
internal kernel OPAL ioctl work with ATA-12 too.

As patch 6 introduced a new USB quirk that overflows 32-bit,
I posted all patches together - but logically, these solve two
separate issues.

More info

1) 64bit USB storage quirk flags

The quirks are transferred through the device info value, which
is unsigned long (and as a part of USB infrastructure, it cannot
be changed).
After discussion on USB list, I used high bit as an indicator
that the values need to be translated/unpacked to 64bit
(while lower values are used directly).

This is implemented through a host-compiled program that
generates device tables and translation function.
As both usb-storage and UAS drivers share a lot of headers and
definitions, we need to generate separate files for usb-storage,
UAS and flags translation function.

(I also tried to use a statically generated array for flags,
but this increased the size of drivers significantly, and
the code was quite ugly...)

2) Support for OPAL on USB attached storage.

The main support for OPAL on USB-attached storage is
straightforward. The patch 6
 - enables SCSI security flag for USB mass storage and UAS device
   by default.
 - adds an optional wrapper to the SCSI layer for the ATA-12
   pass-thru command as an alternative if SECURITY IN/OUT
   is unavailable.

During device detection, these steps are then done:
  1) USB driver (mass-storage, UAS) enables security driver flag
     by default if not disabled by quirk
  2) SCSI device enumerates SECURITY IN/OUT support. If detected,
     SECURITY ON/OUT wrapper is used (as in the current code).
     If not, the new ATA12 pass-thru wrapper is used instead.
  3) SED OPAL code tries OPAL discovery command for the device.
     If it receives correct reply, OPAL is enabled for the device.

Enabling support may uncover many issues, as OPAL-locked devices often
tend to generate errors on the locked range.

Anyway, cryptsetup will soon support OPAL devices, and I think support
for USB devices is a nice feature that enables users to unlock drives
even if they are attached through USB adapters.

But also, there are bugs in firmware, so I added a quirk flag that can
disable security commands for particular devices.

The last patch uses this quirk for Realtek 9210, which seems to support
OPAL commands, but after configuring OPAL locking range, it also sets
the write-protected flag for the whole device.
This is perhaps a bug in firmware (all versions I tried), and I will
report that later to Realtek.

Milan Broz (6):
  usb-storage: remove UNUSUAL_VENDOR_INTF macro
  usb-storage: make internal quirks flags 64bit
  usb-storage: use fflags index only in usb-storage driver
  usb-storage,uas: use host helper to generate driver info
  usb-storage,uas,scsi: allow to pass through security commands (OPAL)
  usb-storage,uas: Disable security commands (OPAL) for RT9210 chip
    family

 drivers/scsi/sd.c                   |  33 ++++-
 drivers/usb/storage/Makefile        |  25 ++++
 drivers/usb/storage/alauda.c        |   2 +-
 drivers/usb/storage/cypress_atacb.c |   2 +-
 drivers/usb/storage/datafab.c       |   2 +-
 drivers/usb/storage/ene_ub6250.c    |   2 +-
 drivers/usb/storage/freecom.c       |   2 +-
 drivers/usb/storage/isd200.c        |   2 +-
 drivers/usb/storage/jumpshot.c      |   2 +-
 drivers/usb/storage/karma.c         |   2 +-
 drivers/usb/storage/mkflags.c       | 212 ++++++++++++++++++++++++++++
 drivers/usb/storage/onetouch.c      |   2 +-
 drivers/usb/storage/realtek_cr.c    |   2 +-
 drivers/usb/storage/scsiglue.c      |   4 +
 drivers/usb/storage/sddr09.c        |   2 +-
 drivers/usb/storage/sddr55.c        |   2 +-
 drivers/usb/storage/shuttle_usbat.c |   2 +-
 drivers/usb/storage/uas-detect.h    |   4 +-
 drivers/usb/storage/uas.c           |  26 ++--
 drivers/usb/storage/unusual_devs.h  |  11 ++
 drivers/usb/storage/unusual_uas.h   |  11 ++
 drivers/usb/storage/usb.c           |  42 +++---
 drivers/usb/storage/usb.h           |   7 +-
 drivers/usb/storage/usual-tables.c  |  38 +----
 include/linux/usb_usual.h           |   2 +
 25 files changed, 346 insertions(+), 95 deletions(-)
 create mode 100644 drivers/usb/storage/mkflags.c

-- 
2.42.0

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20231006125445.122380-1-gmazyland%40gmail.com.
