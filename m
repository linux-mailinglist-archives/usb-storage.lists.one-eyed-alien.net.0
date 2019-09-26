Return-Path: <usb-storage+bncBAABBMPTWTWAKGQEH6B4RLA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oi1-x246.google.com (mail-oi1-x246.google.com [IPv6:2607:f8b0:4864:20::246])
	by mail.lfdr.de (Postfix) with ESMTPS id 17395BFB47
	for <lists+usb-storage@lfdr.de>; Fri, 27 Sep 2019 00:20:36 +0200 (CEST)
Received: by mail-oi1-x246.google.com with SMTP id 19sf2106756oii.2
        for <lists+usb-storage@lfdr.de>; Thu, 26 Sep 2019 15:20:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569536434; cv=pass;
        d=google.com; s=arc-20160816;
        b=fqN4N2WSe3D4iZLy5w20KvVKvRL3/Xy2X307VfsuZG2J6EQg2Dna/2SX86BDqXeaEt
         zyjmiYqUgvM+XVqAOAPchCCMv0v4u+wWCLfi4rNr1Xq7hvVvw9Qo2Y6P1+unPq72nmGJ
         +4b3LhKRm4Xl0J2jexdtWZHhVlYde4HondEApRzrM0bbEWhcDD2mCI5yGHYlaEWmi+Rn
         JgQXssmNEuAq/Q4MdDpMjMn/9hJN7gpHwMAtcnpsOuYQKUlwDtsb9yA+1dZh0hfxqaY9
         zoJf4CWPt2q4vr3C+SuH4M87B4pN/ZV4c2i8e1a3c00Rvk/gIbMG2xvGPA5smcICrTKZ
         fETA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:wdcironportexception
         :ironport-sdr:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=1W0H8mBKB1YYe9ymtIEGT26NSyDjnC9kSXERMb6mLwQ=;
        b=WPxOIJxGBqH8yLI4X1LX4C0qh8CUjB57Z8V5EJO6ujHj1fdFPwgknVEYoxakTZITo+
         GDyj+hvN/Hb6M28FpuYqZyZPQ9oPavnxAH0RZ/vzwLWemVe9x1LRxvc8Qa1+ORxMilBi
         4PNuJvik4Nss1qJ4PoGWmjkBImhNwtiP3l8SpXRn6cdJ2/MVVNe1/7Qe0ekF4dExpXcI
         F6fYnIabt03Hk+aTL6t1tl9VfjZ7ckjNQbALsuBlc/iBx+f50jLsM1PkXhPRzQuUvL1e
         w0AOH2D8sNEzW11I3S73IrYVPbnCy40dtmPNqDuM7SILdCRAx0yXOqd4qGalfwYk7yzQ
         3B5g==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@wdc.com header.s=dkim.wdc.com header.b=H1Fmfraz;
       spf=pass (google.com: domain of prvs=165403090=damien.lemoal@wdc.com designates 68.232.141.245 as permitted sender) smtp.mailfrom="prvs=165403090=damien.lemoal@wdc.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:ironport-sdr:ironport-sdr:ironport-sdr:wdcironportexception
         :from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1W0H8mBKB1YYe9ymtIEGT26NSyDjnC9kSXERMb6mLwQ=;
        b=g4jlg6a/z8n18KrO3079be3LpRomNpXL4jPcQOl01HDROOITtfL4xgoRoxK/bXVPbW
         VbJTwB/omgooP8POesxBDjdz4AfGgli0BiFH5oeEvwQ4Mr40asATZC4AQb7mg07C2zLU
         hA6dLX7p0yLcxUr2m9HmGnM07hUzqyeLB2HSg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:ironport-sdr
         :wdcironportexception:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1W0H8mBKB1YYe9ymtIEGT26NSyDjnC9kSXERMb6mLwQ=;
        b=Oeo1pUGtJBivJ2LXP6e2Ox3a8muoNvlJ8vj/gSmGgK8ZDYabQhNZuWgCYOs7VRTO3t
         TGQhX9ETFTrJVbuRsdr2bSTc2D1xqcdY8IcIsCcSeeIQ/H9mb+TL+YV4WsL7TaAlSROo
         onoCiXuVbudPAWPi5dz4sXtBnPhDRGaEizT14eFvNouWXB5lR5RA37aJ5XFPPa8f7usD
         oLXhNqIAaw7Fij+aQh3X7HV31x9bA4y4GfzKAA5WYTmG+dOInK9sX+CzrJ99ObBqR08X
         3bCOmh/syBOjv8/zsW2lJB00e6EHvDpsIyFoUtSACxzSz2+ApDKxtHL0WGWpsjh5TpYm
         hI3Q==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAXhaK+hctVT/DRvUMZJ5vhQ55acwh2fyidivFrVM1z5V5VvxogW
	GyFXy7TTR3Qj2Ybhp5GSIfdEng==
X-Google-Smtp-Source: APXvYqwG2EdVDhseKLeGFzc4wnSVTB09erIObITN1G7wh6vTZ24SfBXamu8R5iGe4UaIJ2K+fOaqnA==
X-Received: by 2002:a9d:404d:: with SMTP id o13mr758849oti.39.1569536434074;
        Thu, 26 Sep 2019 15:20:34 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:aca:ed43:: with SMTP id l64ls752766oih.3.gmail; Thu, 26 Sep
 2019 15:20:33 -0700 (PDT)
X-Received: by 2002:a54:4e1d:: with SMTP id a29mr4653030oiy.5.1569536433638;
        Thu, 26 Sep 2019 15:20:33 -0700 (PDT)
Received: by 2002:aca:90d:0:0:0:0:0 with SMTP id 13msoij;
        Thu, 26 Sep 2019 15:08:48 -0700 (PDT)
X-Received: by 2002:a17:902:a411:: with SMTP id p17mr914429plq.108.1569535728267;
        Thu, 26 Sep 2019 15:08:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569535728; cv=none;
        d=google.com; s=arc-20160816;
        b=ozLYy8N5GJsTjBv/dfkdK4zqL6nYwO6OxpcIwcfEB0NVs7gznZofw0tDNI6EgCy1wT
         QedxbsqHM2QdLi1Qz9UZQgK3g19GUV6uf0V4Q3NqAXkz8f+g0v64Zxag7+uhIPPeGBOF
         d5F90TUnClZi4gK6qnVIXxsibFuub8Cx07oXCvn7jo30MBFvpmNmb0o5bTsZqosIUcdE
         fgd+ODin8kKmd7Mt3P7xVjGp2RZ7wUvJsP9ChsC5d/GiG2yx8DrXCq+G8CJTd2Az9ZAo
         rdtX+6pjp9WRg46X/BwMvvW+B7Gczjv4jY3OklPtIVq89b9TrIbbcvPvILInti27llNO
         6tyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:wdcironportexception
         :ironport-sdr:ironport-sdr:ironport-sdr:dkim-signature;
        bh=EaH6lZBC8WHcBW5E6X2JfBrLqOShV7GEF+yr2bWwe9s=;
        b=gfdFc/BZlMXEi5hU9Xi94nSNfwkNVdlHLCzODWFccYf2gkkiQMYSCogC43QFR3HlWr
         5XRtmR1VT4aoecpUX7Q+c9LkWWALXA6yzbe7ydM0JGpjkqDiYNUVYioFKow1SjCkjbxG
         Px4W2/EzAliafafZ2FLvowE+3JYUzT2QcFXvvbiYSxAI2FVhKIewRHEUPteeRSm/Px/b
         R2fwtP1EMpvFdhrbH7OO8y1ZBja/q513UKbUxay879rJXVF8tIzvWVauXrv0ngiY5O5C
         fEOUosGWIuJX9y7p6nfnRWqPICml9YF2VBoNr0QkKDfDYbQDhfjH3JY7xyPGOO8AT4R2
         oCJQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@wdc.com header.s=dkim.wdc.com header.b=H1Fmfraz;
       spf=pass (google.com: domain of prvs=165403090=damien.lemoal@wdc.com designates 68.232.141.245 as permitted sender) smtp.mailfrom="prvs=165403090=damien.lemoal@wdc.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=wdc.com
Received: from esa1.hgst.iphmx.com (esa1.hgst.iphmx.com. [68.232.141.245])
        by mx.google.com with ESMTPS id cq15si3180935pjb.30.2019.09.26.15.08.48
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Sep 2019 15:08:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of prvs=165403090=damien.lemoal@wdc.com designates 68.232.141.245 as permitted sender) client-ip=68.232.141.245;
IronPort-SDR: C5EigKcGmHGn6BNwKza4Tuhe1XLEGmpvIO3V56p63QWfUcKsHZkkyHrOczYPSnLgSNHCga74kV
 I2dWmMu7+oXmiz3HXcl+FfB7V5v2PNtsrn5uYs6UnfaeSI+nLaM0Hbrrftv7XR3KXVH+JSlhlz
 nCq19/IOAeHdsSg3esm8ae/dEqeoHEp/YMrBcazMpyC3Mi0IjmpmEJRg7kkGChWNeqNW6qo2K1
 GvlOtqMxmLw8Snj+DNCBf7zPGf4ohgG7m9K5I+ZJqOYheWbvbpxXrohOZwI+l8EycJdfsLIY9b
 UUY=
X-IronPort-AV: E=Sophos;i="5.64,553,1559491200"; 
   d="scan'208";a="226096824"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com) ([199.255.45.15])
  by ob1.hgst.iphmx.com with ESMTP; 27 Sep 2019 06:08:47 +0800
IronPort-SDR: KWwuj2xr7o9AoPxR7n1z8gN72GBkMNkc2wyoX0G8bGC1UTdYRdoOdpTAmXU907x95kabRVCpr8
 k1+Cc9GuweMUXXGmtjV4jJF7UjoPY81Q2rUbtDmwuyopWHFEDLkH7/iEyWra1BEf0P2VHRzaiQ
 B7nOqt+egEwnHHgPu7m8UHvSmYUwSRV7dxJbpgAyxA9aTNcqxoi7KoyU7+fxPsga3HaLJBg2tQ
 WbeApLD99kKhOoDDkczVsIE6vEWZ2vwckPkLkCVoTSXny3qUykkKu/J9GBq1viv0RjSUI0LnZO
 cm2a27t5CK6i90g4ABH4B1xu
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
  by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Sep 2019 15:05:08 -0700
IronPort-SDR: tRuZ9Xynn8r91aS1Aj+ik+1pQjbM3ZIZszytaF6ADgah3rsHCJYRXMpb/WPZW3I0tmwtNAxZqJ
 9u2JTcWM26MyKpt1U/ZhE1pWzX5eiSNF36RFt2Ra6uWevVSSfkf+bkNnJVM6rc6C7A3CaQl24A
 NRHL6LGQdkDynGQabtv5WEhFIflK1LnDy5d4p/r8rPHoPVfvdMXP9y3rIrH/r1S6yu/8B+vozw
 vDNN+clHEhRHNckbcuXrURr/wm2e/KgF6/wDGWRWMJUVSqP5toKee2+MJ+dwFJQZNMHv47U5zK
 L2A=
WDCIronportException: Internal
Received: from washi.fujisawa.hgst.com ([10.149.53.254])
  by uls-op-cesaip01.wdc.com with ESMTP; 26 Sep 2019 15:08:46 -0700
From: Damien Le Moal <damien.lemoal@wdc.com>
To: linux-scsi@vger.kernel.org,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	Alan Stern <stern@rowland.harvard.edu>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Justin Piszcz <jpiszcz@lucidpixels.com>
Subject: [usb-storage] [PATCH 1/2] scsi: save/restore command resid for error handling
Date: Fri, 27 Sep 2019 07:08:43 +0900
Message-Id: <20190926220844.26631-2-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190926220844.26631-1-damien.lemoal@wdc.com>
References: <20190926220844.26631-1-damien.lemoal@wdc.com>
MIME-Version: 1.0
X-Original-Sender: damien.lemoal@wdc.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@wdc.com header.s=dkim.wdc.com header.b=H1Fmfraz;       spf=pass
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

When a command is terminated with CHECK CONDITION and request sense
executed by hijacking the command descriptor, the original command resid
is lost and replaced with the resid from the execution of request sense.
If based on the obtained sense data the command is aborted and not
retried, the resid that will be seen by drivers such as sd will be the
resid of the request sense execution and not the value from the original
command failure. Make sure this does not happen by adding resid as part
of the command information saved using struct scsi_eh_save.

Cc: stable@vger.kernel.org
Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
---
 drivers/scsi/scsi_error.c | 2 ++
 include/scsi/scsi_eh.h    | 1 +
 2 files changed, 3 insertions(+)

diff --git a/drivers/scsi/scsi_error.c b/drivers/scsi/scsi_error.c
index 1c470e31ae81..d4ac13979189 100644
--- a/drivers/scsi/scsi_error.c
+++ b/drivers/scsi/scsi_error.c
@@ -967,6 +967,7 @@ void scsi_eh_prep_cmnd(struct scsi_cmnd *scmd, struct scsi_eh_save *ses,
 	ses->data_direction = scmd->sc_data_direction;
 	ses->sdb = scmd->sdb;
 	ses->result = scmd->result;
+	ses->resid = scsi_get_resid(scmd);
 	ses->underflow = scmd->underflow;
 	ses->prot_op = scmd->prot_op;
 	ses->eh_eflags = scmd->eh_eflags;
@@ -1029,6 +1030,7 @@ void scsi_eh_restore_cmnd(struct scsi_cmnd* scmd, struct scsi_eh_save *ses)
 	scmd->sc_data_direction = ses->data_direction;
 	scmd->sdb = ses->sdb;
 	scmd->result = ses->result;
+	scsi_set_resid(scmd, ses->resid);
 	scmd->underflow = ses->underflow;
 	scmd->prot_op = ses->prot_op;
 	scmd->eh_eflags = ses->eh_eflags;
diff --git a/include/scsi/scsi_eh.h b/include/scsi/scsi_eh.h
index 3810b340551c..9caa9b262a32 100644
--- a/include/scsi/scsi_eh.h
+++ b/include/scsi/scsi_eh.h
@@ -32,6 +32,7 @@ extern int scsi_ioctl_reset(struct scsi_device *, int __user *);
 struct scsi_eh_save {
 	/* saved state */
 	int result;
+	unsigned int resid;
 	int eh_eflags;
 	enum dma_data_direction data_direction;
 	unsigned underflow;
-- 
2.21.0

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190926220844.26631-2-damien.lemoal%40wdc.com.
