Return-Path: <usb-storage+bncBCILJWNIZYHBB4FP6PWQKGQE6VDKWOQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-io1-xd47.google.com (mail-io1-xd47.google.com [IPv6:2607:f8b0:4864:20::d47])
	by mail.lfdr.de (Postfix) with ESMTPS id E0A20ECC99
	for <lists+usb-storage@lfdr.de>; Sat,  2 Nov 2019 02:12:17 +0100 (CET)
Received: by mail-io1-xd47.google.com with SMTP id q84sf8651550iod.15
        for <lists+usb-storage@lfdr.de>; Fri, 01 Nov 2019 18:12:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572657136; cv=pass;
        d=google.com; s=arc-20160816;
        b=z1yoGSgd8DqJcYlLKF98lAx7a40EVK7fpwaG8TL4uewN4w5vKTULvNHay3rubBAmPv
         9mJ/Rq9Itth1zDU7TJlAYMKj9byTqqtwLTuy/eEx43u8OzKMF/kVX7yW0Q5+fzwkI9Hg
         9TbEpfPRjvmY1fgSAOAq2e93fsfDDI7nPsy7W4lXrmYM7Ii2mIBub++RvA/6ti84YDRG
         HtTR81cAikYAgejKw9R5qJrjQH8u0GMgmJQhHTE+KiZqrHM/m1LwL7bKHp5KesplE3F1
         VdYpE7ZYE6xEuL2/lS6PhpDxaYbbFEZIh+2bnlrjeS9F5CRurd5cs2qS/LY4JH2Hb5Md
         L14A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:date:subject:from:message-id
         :mime-version:sender:dkim-signature;
        bh=42vFnuMDrg3bEO05mnSywOQLZBo0DNY09M1ONL2B9Uc=;
        b=EmK8HU8bNX2KxfhXDZjbuMGUApFX5t1BYyNEtDM5FIWIvKqeDG1VAYQ/Hy4JTATg0G
         tldqnxFKyVke5TluXAvzQUaNP/Qq8iO/ZvCr/Dx+jdqN4iJW8NIfT5jQ2zOv0opWJcYF
         bm1n+4YNl5SfxGcm9JUMRpmVZJ5/5Eb1e/an8Ia39wa540sQyr7oSVlziXBVbMafoPdi
         CJmgNrWLp/zK9rwFainck7VPnQ2VPNc0peXdJuXiinpLkyGXUov4qZtqGy34nCUwLq1a
         zrVltPPd+kiNaEhLboMudPkp6fNrnvGOq1x2LX167N6yGhIfG57DXTbZE944IQDXtepV
         h0OQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: best guess record for domain of fthain@telegraphics.com.au designates 98.124.60.144 as permitted sender) smtp.mailfrom=fthain@telegraphics.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:mime-version:message-id:from:subject:date:to:cc
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=42vFnuMDrg3bEO05mnSywOQLZBo0DNY09M1ONL2B9Uc=;
        b=ksdSKAKqF4q0xF7X9jQvZRvTWa26e0q7oCjiHWjN31ikqhSeGp6F1Kd7+EZnbjx463
         koFeQDSaBRbYKClAvMkxBdcESnDyE3LyiKMzalF16TqdN+wxekKQvJyCiPjdUVtx5T0J
         XHEch1A2O1NlYYmnKGSmlbMDV4z9M/wo7aC20=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:message-id:from:subject:date
         :to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=42vFnuMDrg3bEO05mnSywOQLZBo0DNY09M1ONL2B9Uc=;
        b=JyhdzuOqFBzh1Y+x/Wo82B5dxK+SfYJnsO7+OS1eUck3YYqCIj71rRDoeTR6b0xoeO
         mt4rtm5e4qvgj/1aiTdvGMVLF3F1OVGRwrJB4lHXiaGaI8rMhRG9e3BLaly5SmutIHnD
         PHDAMlEZwa6H5FoMIf+9EY86ttEEimhApe2ATZs1C9q9RARcIigu/FudGUn7h2VUeo3X
         ZBF+lJ6pJLwdqeoEgp+ADwQ3mF220yvNC+DZLqRRgNPiXU/eKtkoLOczVSs3yCrqJKhh
         B9106QeMC7S1HXcZSnthDgGH5eo82Ym0l1eEsmc19fZ0B5AmAA5G3+yoYme3TdywuxrK
         RLuQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAWNRM/9xTdmjTrcuqaDRiQSVQ4+4G7c5va8TV8u8jwDd7UqY3wi
	R7xPMvExjE3RVqV7C7nUkAcT/Q==
X-Google-Smtp-Source: APXvYqwqJWbqoC5B6dZ+B4pc5Nk7jNVdrKHvR1NiMLckZbW6DSy+d8lAwvvi07ncmxjQza3Ww8MQEQ==
X-Received: by 2002:a5d:9ecb:: with SMTP id a11mr13721783ioe.19.1572657136654;
        Fri, 01 Nov 2019 18:12:16 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a02:918e:: with SMTP id p14ls649687jag.11.gmail; Fri, 01 Nov
 2019 18:12:16 -0700 (PDT)
X-Received: by 2002:a02:77d5:: with SMTP id g204mr8384678jac.125.1572657136118;
        Fri, 01 Nov 2019 18:12:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572657136; cv=none;
        d=google.com; s=arc-20160816;
        b=LhEFwO/Dys0oWdpNxEBp6yLHoMq2BBHkbweq9os01XKg3QBzb2VElOgkvmQRYEdLP/
         sIcFaDwBeGUqMgrJDvu0VNoBo4CRqqJohs0HixdJwD6xSeJLRut6J+V+SSKamI7Oo/vN
         M9RrBU5eIz///gjAdB6a7VEOOSgh6MRt5lvxLUdEWVoXnNwdnmAZV7TIHa5TUN+Qf04t
         YMRCvroi+7lAZ3agbzgyfIlHRG5KFx8NaNV0AewmmyDkt1PDjjAI6+47I1eHyxUoC11q
         Ov3sjpGRJhwsyj5IQl9NcvCPMF2dymKLms1ek7PyX9hzEw8OHKqEcjzIUg2ch2xKe3G3
         csXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:date:subject:from:message-id;
        bh=nKW38Z5i2ioXIYv48064XtfB0T6ttK+h1n1J9e6XHmg=;
        b=o5DgdoMFBMv2ZswCwVdPjw7pEwx81kBrRkkxeuimUHw5bfN6B3etGQasCvk0Pqo8c9
         o/cBwR37jBswqsuDSZRy15MuMoT/KEB1nuHfmGHKgmIV/Hk+OjmYOYoWohPbiq7gUxzi
         ulMrUizn40ACTXioILFWz6AuzWVWa6D9WfwPCSHj/Ut6E5Xn4IOjoeQa1BMDKdduSEpb
         41I4L8RDz2a7uhUZI3KVe9bYnfcfZQzpl0svqgIr2Vam0P8fdnEwVW9lQQgy4+t831YQ
         cJz5FukLWVshRcoAQXavmBvYPU7ndhaDvLkDeCnxhWVTWYv35JbgmE9v23yGQskrda4N
         xCLg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: best guess record for domain of fthain@telegraphics.com.au designates 98.124.60.144 as permitted sender) smtp.mailfrom=fthain@telegraphics.com.au
Received: from kvm5.telegraphics.com.au (kvm5.telegraphics.com.au. [98.124.60.144])
        by mx.google.com with ESMTP id r10si13701312ilo.17.2019.11.01.18.12.16
        for <usb-storage@lists.one-eyed-alien.net>;
        Fri, 01 Nov 2019 18:12:16 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of fthain@telegraphics.com.au designates 98.124.60.144 as permitted sender) client-ip=98.124.60.144;
Received: by kvm5.telegraphics.com.au (Postfix, from userid 502)
	id A60982A258; Fri,  1 Nov 2019 21:12:15 -0400 (EDT)
Message-Id: <cover.1572656814.git.fthain@telegraphics.com.au>
From: Finn Thain <fthain@telegraphics.com.au>
Subject: [usb-storage] [PATCH 0/2] SG_NONE fix and cleanup
Date: Sat, 02 Nov 2019 12:06:54 +1100
To: "James E.J. Bottomley" <jejb@linux.ibm.com>,
    "Martin K. Petersen" <martin.petersen@oracle.com>
Cc: "Michael Schmitz" <schmitzmic@gmail.com>,
    linux-scsi@vger.kernel.org,
    linux-kernel@vger.kernel.org,
    stable@vger.kernel.org,
    "Jonathan Corbet" <corbet@lwn.net>,
    "Bartlomiej Zolnierkiewicz" <b.zolnierkie@samsung.com>,
    "Jens Axboe" <axboe@kernel.dk>,
    "Viresh Kumar" <vireshk@kernel.org>,
    "Oliver Neukum" <oneukum@suse.com>,
    "Alan Stern" <stern@rowland.harvard.edu>,
    "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>,
    usb-storage@lists.one-eyed-alien.net,
    linux-doc@vger.kernel.org,
    linux-ide@vger.kernel.org,
    linux-usb@vger.kernel.org
X-Original-Sender: fthain@telegraphics.com.au
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 best guess record for domain of fthain@telegraphics.com.au designates
 98.124.60.144 as permitted sender) smtp.mailfrom=fthain@telegraphics.com.au
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

These two patches address some issues stemming from scsi-mq conversion.


Finn Thain (2):
  atari_scsi, sun3_scsi: Set sg_tablesize to 1 instead of SG_NONE
  scsi: Clean up SG_NONE

 Documentation/scsi/scsi_mid_low_api.txt |  3 ++-
 drivers/ata/pata_arasan_cf.c            |  1 -
 drivers/scsi/atari_scsi.c               |  6 +++---
 drivers/scsi/atp870u.c                  |  2 +-
 drivers/scsi/mac_scsi.c                 |  2 +-
 drivers/scsi/sun3_scsi.c                |  4 ++--
 drivers/usb/storage/uas.c               |  1 -
 include/scsi/scsi_host.h                | 13 -------------
 8 files changed, 9 insertions(+), 23 deletions(-)

-- 
2.23.0

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/cover.1572656814.git.fthain%40telegraphics.com.au.
