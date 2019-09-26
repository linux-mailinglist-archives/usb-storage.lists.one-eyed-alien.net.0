Return-Path: <usb-storage+bncBAABBMPTWTWAKGQEH6B4RLA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oi1-x248.google.com (mail-oi1-x248.google.com [IPv6:2607:f8b0:4864:20::248])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A579BFB48
	for <lists+usb-storage@lfdr.de>; Fri, 27 Sep 2019 00:20:36 +0200 (CEST)
Received: by mail-oi1-x248.google.com with SMTP id w14sf1898990oih.19
        for <lists+usb-storage@lfdr.de>; Thu, 26 Sep 2019 15:20:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569536434; cv=pass;
        d=google.com; s=arc-20160816;
        b=GWaRyztKouAe5QsfNpH2mtNVzIEpBL9RI+6uve0F60LXOcUXApD9NLAIKuGRw/bnLO
         bdWHB/AoCrni4iPZwnZWY9NgbcfL/FUr5yEAaIPgA0JPnUtuys9nzZlYBuys26+ChRKP
         Z//ftODUZH57oRpMTHc21NT5bIZ2949PAwy9WcALInU0Hnl9St2TqU3p/jbpaRsAWVIe
         oESP8dSx/vP8ak2dSZIeFv/Hnq6DDGdNUYOmfCQhUaDCLpUAdJQFmx7A1fqwixLG9orB
         Nb+xD1uxjGqLApgeSgq60wXIT3xBn31u5HP6ewh7qPaY/HQVRNQ2j84e8saDEWXHme2p
         /ycg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:wdcironportexception:ironport-sdr:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=Z39G0TQTvcOsbEsPY+W+RpB9oeFGnSbSXli9qF94/h0=;
        b=SNLfRqP2HZurDWbwLpu8VET5VqKpLYCHWiG2JN9f6SqNno0ZBrPsudaLGJiZdFaP+O
         RbVDln8Cz5B/jwcNajmTUC4XMaH7xKbFR2T9iAB224mISWUHZw5WTupp6Si2xIL07yp0
         vLuZonJt6pEiByOar7a9+LV6S5jPNGpLLZrwFC2BqkYjqFy8ZMILQ8EWB0qE3HeGabaR
         3eheN2qLnYxu7UTjShrwlT5q78nTPnUr269JKPWAks8XA58cVKp28sm7Q8TiLv9iOi48
         5mFWrLfqpOTsZCd5QK/W59dUe13xhbfjnMHKkyKOg+Jd5dE8VpYkG34FuawzTdjc1k2y
         0WGw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@wdc.com header.s=dkim.wdc.com header.b=iV5PEI4l;
       spf=pass (google.com: domain of prvs=165403090=damien.lemoal@wdc.com designates 68.232.141.245 as permitted sender) smtp.mailfrom="prvs=165403090=damien.lemoal@wdc.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:ironport-sdr:ironport-sdr:ironport-sdr:wdcironportexception
         :from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Z39G0TQTvcOsbEsPY+W+RpB9oeFGnSbSXli9qF94/h0=;
        b=glNK/yLQleC04HdyR5U42e4AeHSp22xx7LwETGuD6QNZETBxa0Sxra1UzKVcLFcesA
         XsEjJBPe5Li9cEOqLCI+RCdBijFi5DBX/cOEqYBmtoWBOzNVXwq2/EtQ+9jvBNfwR18o
         2VqcNZ+Ms7fZ2ZKouiWuj+btFBDqeq+dn8W4o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:ironport-sdr
         :wdcironportexception:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Z39G0TQTvcOsbEsPY+W+RpB9oeFGnSbSXli9qF94/h0=;
        b=c4cmB3B8wrpOrHPxiJ1tBv4hwZG1u5QBDZEGkVcGRp+aK80xlWGcMD55qOappJNLFp
         pw655mnAB4XYshOvYUUTBEXU31HbLb+HvlLSAOnaQqhXLCINDxkKEo8psg57544JkMhD
         8JONRSMrmAWgUOHqGtPuVKjOG1Sa+01zLvAtLdA4OHfxS8i/FtgRm6fArcfMt3OIlrZ+
         HczjLr1l1JSCZwhm0swHB/K5TlOq+UbWwG07uIFKErT3LmNPXGIZdCOQoqJB1lO7n3Rz
         dj1DmK0T4YkqIPCugKYdnSVAfKyCl1XTLjInK8ZHwFYV1b2rMOMrqOLQH74AU/hAWvUV
         baNA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAWAHuW/yUYluDmc/3AtwNSWa+5VJIJQ5WYU/iXLqMpaYksXIH/K
	JP9b0aFlwebLclR8T8JBqv567A==
X-Google-Smtp-Source: APXvYqyPwqLpToPzI/zjXCgwvC7igpQB5+aTPO4J6c5P0xSnoiy+7uEEo+exjUruPXZo+Ize+fIxUQ==
X-Received: by 2002:a9d:58d:: with SMTP id 13mr781593otd.248.1569536433829;
        Thu, 26 Sep 2019 15:20:33 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:aca:ad92:: with SMTP id w140ls751263oie.2.gmail; Thu, 26 Sep
 2019 15:20:33 -0700 (PDT)
X-Received: by 2002:aca:d708:: with SMTP id o8mr4594691oig.68.1569536433637;
        Thu, 26 Sep 2019 15:20:33 -0700 (PDT)
Received: by 2002:aca:90d:0:0:0:0:0 with SMTP id 13msoij;
        Thu, 26 Sep 2019 15:08:47 -0700 (PDT)
X-Received: by 2002:a17:90b:87:: with SMTP id bb7mr6302799pjb.28.1569535727271;
        Thu, 26 Sep 2019 15:08:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569535727; cv=none;
        d=google.com; s=arc-20160816;
        b=Pw+ecLD0+w+5YX0goAuvwUEw4lnYrFCh3/YvTI5oxfTSVaO1WN6MJNTB1Ax9YpTgwC
         CEtIUeiSsnnzJFsORSzlCYSFUIb63KVDA6GiTKvNFYuWmTDRmGT3aXEwiLFwqpdIGmDa
         yJkrgUy6edobk4J7+MIVmTCj+QVMQC9gkUxsv8ZkSnygu6BhGvjgn+cOp3en+IGtenv6
         RJBoL/UpkLKGZiLkPqtAuWNKRfX+8wWf7qfI8UjngmTh7UrAtFV82K3z0UgW4sG252OS
         uZPAZUBa6hiTl+WfEPoRvv/QVlkeE6DRihjxGzpOdfyUY1Xz4QaIslI6L90GlsmPd8qP
         su3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:wdcironportexception:ironport-sdr:ironport-sdr:ironport-sdr
         :dkim-signature;
        bh=znC5FMT/BJ7BiXG/57b1a1PPluKmtoamlWitg/zKewo=;
        b=OazYlN4JIVtcE5+hwN4ZO+ayG2B2oizNqDFLE+vjXGKfVLuVcP4G3tBtlhWm55oSxn
         ZZbsk8fpX/2C0aCfoElPoA5viucjULSzZhN3FleXmEXVNf2kW5rp/55rIt/AGrSzBEHT
         MfpyLuCE94uP+G7EGSIpeW0W9TIwCYJ1qUHrQ3clQiUyQsPws9bQRNkZYA5YFnWyTGvo
         nM2MOo1CqoZ5nd6z0r10gU5N/k0zPKYTMaY5IpMetWIgKMIQQ3lr3su7/vTFTJ0jNUGi
         kdr93iCvQx4lrI3HXVInAHZYck6Ix9On0WjL03xVwsF5/s0xUKraNYtKfxbKkn/pE8w4
         6Y6A==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@wdc.com header.s=dkim.wdc.com header.b=iV5PEI4l;
       spf=pass (google.com: domain of prvs=165403090=damien.lemoal@wdc.com designates 68.232.141.245 as permitted sender) smtp.mailfrom="prvs=165403090=damien.lemoal@wdc.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=wdc.com
Received: from esa1.hgst.iphmx.com (esa1.hgst.iphmx.com. [68.232.141.245])
        by mx.google.com with ESMTPS id cq15si3180935pjb.30.2019.09.26.15.08.47
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Sep 2019 15:08:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of prvs=165403090=damien.lemoal@wdc.com designates 68.232.141.245 as permitted sender) client-ip=68.232.141.245;
IronPort-SDR: XQ5MMYyKEkk+4esqmxuCV+k5s1mI9Eq3OwdPXbcsn7grVHp5/YaP/Dw08F+L/GzNbYOkYGp5nX
 eB/6OcqTsU1gMzAZrzeBhXOlWgmTXsVv9Nqxe+vxohUSu2nCYL/EN06iMwIjMf0aFnVdJskCoz
 uXlNlpxhbzPF7eFw13Ken0CXSYTIvcTSTkynMvq2XBGovMfX6VETvTUClCt3jv1csU0KkfP2bE
 Cqk4VTPS7Ouz96LYt+aYDy1gwv9sxBGf2gHqpK4u/DNd9vQZ7p1CJwjHzNadKgEYjBZgE7txx9
 0po=
X-IronPort-AV: E=Sophos;i="5.64,553,1559491200"; 
   d="scan'208";a="226096823"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com) ([199.255.45.15])
  by ob1.hgst.iphmx.com with ESMTP; 27 Sep 2019 06:08:46 +0800
IronPort-SDR: cjHK8jqLZ2c4B/dRyRqLhTLz0dHCK5+xYR2HVs/ShzNoJiSE3zmseAQHo3KpBXYy/BVVHei98x
 voi6467susMZrD4s1V7I/LzHg9kl5XroYaSAiSHUiAqCEc6JoIkPPtoVhgcf3CriPT8VOOrBd5
 D/+oixdNRSEASsbuHusmLH1EVy3XmZ+xRA1VmVJgmojrqIQJDfYx4FuvveZ2mXHdY36izd0V1q
 z5zLQvwOAFtFCit7n9DuEtj5fTIFXv6OynTgcedqU3h10br5uytU+X2GTftl5s6GA6p9HoQN3D
 gMHuOh//pbHXCa7mzMW+/Djj
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
  by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Sep 2019 15:05:07 -0700
IronPort-SDR: 1Bxr+sMRM4yhVg9saBSIl8gmYZQ2yrLgaWKyLZxEiJ6RMfnAOb3lp+Rkuy41qeqoH8vhBRr1vY
 HAkbtzi4fP+LpN4qGBHHWJctekcxSY75u0TxATQYQbRLNnTim7H6GOam0q+i3z1Zijj28DetiL
 uBCYp91ZKwTLeoaFHPOI3GOvhOZ8ip4uo/MuXvKGqP0Ma8veidUm5LvwpjYaSeaumoBOxsGhMi
 TksQxfyN+1rA3BkMsBeLVP2TR0eMt5ZiP9ctjnZFCdFoZUnL0P1yytqCoRojT0md9MMC6vjVJv
 Pnw=
WDCIronportException: Internal
Received: from washi.fujisawa.hgst.com ([10.149.53.254])
  by uls-op-cesaip01.wdc.com with ESMTP; 26 Sep 2019 15:08:45 -0700
From: Damien Le Moal <damien.lemoal@wdc.com>
To: linux-scsi@vger.kernel.org,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	Alan Stern <stern@rowland.harvard.edu>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Justin Piszcz <jpiszcz@lucidpixels.com>
Subject: [usb-storage] [PATCH 0/2] Fix SCSI & USB Storage CHECK CONDITION handling
Date: Fri, 27 Sep 2019 07:08:42 +0900
Message-Id: <20190926220844.26631-1-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-Original-Sender: damien.lemoal@wdc.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@wdc.com header.s=dkim.wdc.com header.b=iV5PEI4l;       spf=pass
 (google.com: domain of prvs=165403090=damien.lemoal@wdc.com designates
 68.232.141.245 as permitted sender) smtp.mailfrom="prvs=165403090=damien.lemoal@wdc.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=wdc.com
Content-Type: text/plain; charset="UTF-8"
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

If a non-passthrough command is terminated with a CHECK CONDITION, the
scsi error recovery code reuses the failed command scsi_cmnd structure
to process error recovery request sense. To preserve information
regarding the failed command, the functions scsi_eh_prep_cmnd() and
scsi_eh_restore_cmnd() respectively save and restore the original
command information. However, the resid field of the failed command
request structure is not preserved and reused for the request sense
handling, leading to the original command having an incorrect resid
when:
A) The command is not retried and terminated with an error
B) The command completes after retry and the underlying LLD does not set
   resid for a fully completed command (resid=0)

The first patch of this series addresses case (A) above by adding resid
as part of the command information saved using struct scsi_eh_save.

Case B can be observed with a WD My Book USB disks when a read or write
command is sent to the disk while the disk is in deep sleep mode
(spun down) due to a long period of inactivity (~30min).
In such case, the following command sequence happen:
1) The read or write command is terminated after a few seconds with
   CHECK CONDITION and an asc/ascq of 04/01 (LOGICAL UNIT IS IN PROCESS
   OF BECOMING READY)
2) In response to this failure, the USB mass storage driver triggers
   autosense processing, reusing the command descriptor to issue a
   request sense command with a 96B sense buffer size. The reply
   to this command gives a NOT READY / LOGICAL UNIT IS IN PROCESS
   OF BECOMING READY sense of 18B, resulting in a resid of 78B.
3) The original command is retried and failed again, with step 2
   repeated, until the drive spins up and becomes ready.
4) When the original command completes after the drive has become ready,
   the request sense command resid of 78B is seen by the scsi disk
   driver sd_done() function and wrongly generates a warning about the
   unaligned value reported.

This problem is fixed in patch 2 by always setting a command resid to 0
when there is no residual in usb_stor_Bulk_transport(). Note that
usb_stor_CB_transport() does not need changes since usb_stor_bulk_srb()
always sets the resid for a completed command, regardless of the
residual value.

Damien Le Moal (2):
  scsi: save/restore command resid for error handling
  usb: Clear scsi command resid when residue is 0

 drivers/scsi/scsi_error.c       | 2 ++
 drivers/usb/storage/transport.c | 9 +++++++++
 include/scsi/scsi_eh.h          | 1 +
 3 files changed, 12 insertions(+)

-- 
2.21.0

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190926220844.26631-1-damien.lemoal%40wdc.com.
