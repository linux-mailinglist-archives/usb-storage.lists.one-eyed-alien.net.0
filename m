Return-Path: <usb-storage+bncBDF7X5HH4UNBBW4JZTWAKGQEXG6HJ5Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-yw1-xc45.google.com (mail-yw1-xc45.google.com [IPv6:2607:f8b0:4864:20::c45])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D1F3C2E63
	for <lists+usb-storage@lfdr.de>; Tue,  1 Oct 2019 09:48:44 +0200 (CEST)
Received: by mail-yw1-xc45.google.com with SMTP id o204sf11353051ywc.12
        for <lists+usb-storage@lfdr.de>; Tue, 01 Oct 2019 00:48:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569916123; cv=pass;
        d=google.com; s=arc-20160816;
        b=HhIRoi6FOneWFNsVlX3XyxdQenOKyxwuMNatrzicC5fYQ6gQlr7KrTq40cUCa8An80
         0+8EPJpLyvQ4v9HSehqMzGsWadVwRcr4ill9ERLR7LxxpF3HGIULb9ZmzCJ8aPTycO2p
         JTSVICuybZP+ZG3AKOtV678jS3xDujApJNtqt8zfklKnbgm5LSi5Y+77mTXniapBGOjX
         yWI0PSXXci9t81/I4U3RRRDVGHAV/bRAkI/x/dKDhHsYNhACrpWGOssOwQEOCWIiw1V4
         qpBwIdUoFPgozGx95nItOmIAE2FVkXb+IoEVbqC/u71MhoDeii4TPloJNTxkYjNB9BuS
         p3hw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:wdcironportexception:ironport-sdr:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=W8bV8rUqG0VoW7wRD9s7evL6xeXs1jRLIrGgfcIY1YM=;
        b=Ut2fL/1L/wxlqHH1koSELYngsPBcm4A9Rrc8YCS4r/HpNo0D2QSgdJtJsa7c3MVY70
         Z4CHzKrQfDYDGonCGPl86OyedCTBGGY+v+/bgAaUyZT3Fo4sHxX25Yg/IkX8diEZ3iyz
         FT3BZw17hIYftkV8XrWTWlZO+X+IwQDQfqqK4EF98swXwlOf6FbnnsboW1Rig5uNRYpZ
         Cz8Dzdy89gpmkG/0xOhcXpSVdmhJ7JznBjFxY3oAFtf9G7YJR1wwmUv1tvRqFCKcXqSI
         0kcVsSHCLcI+W/zIbDTaoSj0Avn9gsK+U1U1E21Nlsgt/J6mvRJPZ/tjK1eBnJJelAxT
         27tA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@wdc.com header.s=dkim.wdc.com header.b=hhZUPW+O;
       spf=pass (google.com: domain of prvs=1703f4a22=damien.lemoal@wdc.com designates 216.71.153.144 as permitted sender) smtp.mailfrom="prvs=1703f4a22=damien.lemoal@wdc.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:ironport-sdr:ironport-sdr:ironport-sdr:wdcironportexception
         :from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=W8bV8rUqG0VoW7wRD9s7evL6xeXs1jRLIrGgfcIY1YM=;
        b=ll6Jkbk6mmnR815aGl9Dn/e1QKT5Wk6mtdDq6/5kq9DMAQm1h/wD7y+5lA2zJJxkqv
         bINVWic/MsDEzbzhZVPtH7e0Y2ynGH6o2+Iaoy2v+k4ehBaLgnWn02xSQWLtzqP4SqML
         hGS25OuTM9SS4SZVKisRDsV/LsJDmgq/AEAm0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:ironport-sdr
         :wdcironportexception:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=W8bV8rUqG0VoW7wRD9s7evL6xeXs1jRLIrGgfcIY1YM=;
        b=tWEFqjaCLoYHCIze4q/s0s8deACCj/S2Mroq2tT/mWbjLKp5bQm4ctK5TuaA9BDO11
         tOZyKOgB5XE/3HslzE5LhF79FRmXVpBjtURQ9p/Frzk9wbhKtPyuNpylYRNF/YIiQw/T
         b3aWL0nhZv9247DKeZsBzRjXpAktYNy4gXYbwSEKGnmCzkQNEb9WSEvm26IvZvHJkuG+
         AmZQiwjxcPTwU2TfW2pyFeheXCiAWfh0cXWCzg9bM60GHqETqw5yMhp40se1Z6Yo6R69
         /ykGwXA4P8yZ2znj6rNQ6tdxkgXhBWhqKPtgQ2ov9Fp9Hmu2NMj3XXkNr4cT0nlfNthf
         k2jQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAUs9aYTF3HYSDnC8/3Nzdd9kD1JqD0jGeFJotUbX8ef8ovUaTBg
	0lwStHDtkDi8HUwjIQwt4IBqAQ==
X-Google-Smtp-Source: APXvYqwUlte8A0N9htpP6cYUQe6yG75+oOWBxDMRXXHwHoXHPqpgi/nqqtuVMHLwv4PVYhDgHR37eQ==
X-Received: by 2002:a25:9d06:: with SMTP id i6mr18577847ybp.445.1569916123337;
        Tue, 01 Oct 2019 00:48:43 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a25:9d84:: with SMTP id v4ls2575674ybp.0.gmail; Tue, 01 Oct
 2019 00:48:42 -0700 (PDT)
X-Received: by 2002:a25:df87:: with SMTP id w129mr18177453ybg.121.1569916122790;
        Tue, 01 Oct 2019 00:48:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569916122; cv=none;
        d=google.com; s=arc-20160816;
        b=o6hCQKUzwpWSQ6ykJt7AMBXNT/fvGn5/9Rn6vNvfPAQo1dhl1zu6GfKNxdCtNYdbuN
         XBiEIPK7bmw43rRt7BaKgA0dQxBcMS2Swde9t1I1lK/N6xUE0VgqwdabCVr5N0bpsrO+
         /JWTCSQqaKAH8z6UKYBAr/H3fEKLkrThW9zXWqEWKyvaXrUuCKi2k/Zfpd04/NYobZ1s
         B26nb8Tkv2+EWN4oiqr4fz77jnAEXTLA0LuP6YUCPoOEe0GdJLstGa8imwV55U6he1du
         qFR4hySs5VDUPpJASr5Yxkvgrrumy0IqEIaGijkcH4Eoh00bTZ2aNi2936Pi9uUccMz1
         IMqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:wdcironportexception:ironport-sdr:ironport-sdr:ironport-sdr
         :dkim-signature;
        bh=spxxpl3UCF12dSZ6kcAzkTwHR4sIJxXnkT6hc2wOOQo=;
        b=CARWSJwgRS3SyMDEbS0sEeeTLX6Wfw11VGfke9WPMWRba07OGeKHqpyF0ozw1LX5XG
         FvJfj6yGBdj1q50mcRFzSaaXEXnY57E3FKFieJUOyRKNkLVLeHsqW2iFkhEHCj+7MK9s
         ei+46N2aJzqWVSK+0aTCa4GbTXarFBQon5YPa6yEqpqwB/fL1JY7i0GxQq4/R3St1RkO
         +qaT6X6egFE9N+ca3aRnli8jGe79rVpY/vleE2TI3yCvWszB6Zt3kslEJO7x78lRQ5fU
         9Pp9riGc65EibxfnV6Zfoa98PVv0S9U9kFKv8aodQEa3kMyJFx+V18mWWcySw33Zp7C8
         pBXw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@wdc.com header.s=dkim.wdc.com header.b=hhZUPW+O;
       spf=pass (google.com: domain of prvs=1703f4a22=damien.lemoal@wdc.com designates 216.71.153.144 as permitted sender) smtp.mailfrom="prvs=1703f4a22=damien.lemoal@wdc.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=wdc.com
Received: from esa5.hgst.iphmx.com (esa5.hgst.iphmx.com. [216.71.153.144])
        by mx.google.com with ESMTPS id y31si372470ybi.24.2019.10.01.00.48.42
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Oct 2019 00:48:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of prvs=1703f4a22=damien.lemoal@wdc.com designates 216.71.153.144 as permitted sender) client-ip=216.71.153.144;
IronPort-SDR: hpD6gJx2Db6/u/lc9V+gDTNiB7FpT0ILOY9prgjh4hi03J8lj6R9UR6cvDW3rcMucsFF/9WGF8
 J+EoVVhQRZclF26sz9gG/1YQoYSNmFanDy2Qev/+L1ULuNe5GA5+JvqF0bIbDFe1QOVeqmqQZ0
 v4kjdmE0c7F6s9UFwwnVHlI80KhNMXm03eN6CGX7yRJLGdNLqv5ai/H8EILR6QrpJ1ximsSzM3
 Gebx1Rrkv+rc/aoSMXjx1i5adQ8KaDIQ2BcY+3nAu+vMUIgc6uU+8LbZ1makMYsD6GcTJnpcAe
 7s4=
X-IronPort-AV: E=Sophos;i="5.64,570,1559491200"; 
   d="scan'208";a="120284228"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com) ([199.255.45.15])
  by ob1.hgst.iphmx.com with ESMTP; 01 Oct 2019 15:48:41 +0800
IronPort-SDR: p/UI+kNp/rFVg0AhvL4hjtllio98VypYiKIafXdYjtT/6kywxiEY55j+G2FlMaVzgL9UioDvLl
 7PAoMLHVLtUr37Rj+GWw4bf9hDRIVSqf5AYq+m2OTUisqahJD3BaivDgd5xb/n0unKhMhJ1beB
 9iveE74zD3inE3mQ4dYHiDa0n0mrx6dDw0icfa074GO6dN7imS7R9sLVPtc6R7NROWQY9pxnQg
 11w93qXuA6lUpd4S6GQJ8u8LuY38yllnRWr7TRufeWfLe5AyPhnr0kUvY8WhTI7hlu/c31mUw5
 yl2Ru9QVo1Eax5hQHzkJC80e
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
  by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Oct 2019 00:44:54 -0700
IronPort-SDR: b310TOzOTn06o9J5QoAFs5lXe1YHdnXbrqk87NAsItAyW8ZpnedNhxP+VHfT4HC7dndSf5FBzt
 8Oq9e+xkA3XmBJbSQntxsxgOCn5DbFFIQoJys+aXOBOPbZKc4YcNaIWlKCuWM+2lBI93xJjIGW
 bpQF6xaFKH8ULiaaolAG6Idpe5oqlBelM1aOHxyO1xbpBO6FLgLQITIKmojRD2EsqVIfRhxPSa
 uzNjZVuI+ru5fSmtdd1aPUwTuosklKMI0CUTf/N/JzgQPGLq6JHLBIPhokPgrg7GxDR64qUCCX
 3mI=
WDCIronportException: Internal
Received: from washi.fujisawa.hgst.com ([10.149.53.254])
  by uls-op-cesaip01.wdc.com with ESMTP; 01 Oct 2019 00:48:41 -0700
From: Damien Le Moal <damien.lemoal@wdc.com>
To: linux-scsi@vger.kernel.org,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	Alan Stern <stern@rowland.harvard.edu>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Justin Piszcz <jpiszcz@lucidpixels.com>
Subject: [usb-storage] [PATCH V3] scsi: save/restore command resid for error handling
Date: Tue,  1 Oct 2019 16:48:39 +0900
Message-Id: <20191001074839.1994-1-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-Original-Sender: Damien.LeMoal@wdc.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@wdc.com header.s=dkim.wdc.com header.b=hhZUPW+O;       spf=pass
 (google.com: domain of prvs=1703f4a22=damien.lemoal@wdc.com designates
 216.71.153.144 as permitted sender) smtp.mailfrom="prvs=1703f4a22=damien.lemoal@wdc.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=wdc.com
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

When a non-passthrough command is terminated with CHECK CONDITION,
request sense is executed by hijacking the command descriptor. Since
scsi_eh_prep_cmnd() and scsi_eh_restore_cmnd() do not save/restore the
original command resid, the value returned on failure of the original
command is lost and replaced with the value set by the execution of the
request sense command. This value may in many instances be unaligned to
the device sector size, causing sd_done() to print a warning message
about the incorrect unaligned resid before the command is retried.

Fix this problem by saving the original command residual in struct
scsi_eh_save using scsi_eh_prep_cmnd() and restoring it in
scsi_eh_restore_cmnd(). In addition, to make sure that the request sense
command is executed with a correctly initialized command structure, also
reset the residual to 0 in scsi_eh_prep_cmnd() after saving the original
command value in struct scsi_eh_save.

Cc: stable@vger.kernel.org
Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
---
Changes from V2:
* Open code resid save/restore to keep the functions style
* rename struct scsi_eh_save resid field to resid_len to match struct
  scsi_request field name

Changes from V1:
* Dropped patch 2
* Add resid reset in scsi_eh_prep_cmnd()

 drivers/scsi/scsi_error.c | 3 +++
 include/scsi/scsi_eh.h    | 1 +
 2 files changed, 4 insertions(+)

diff --git a/drivers/scsi/scsi_error.c b/drivers/scsi/scsi_error.c
index 1c470e31ae81..ae2fa170f6ad 100644
--- a/drivers/scsi/scsi_error.c
+++ b/drivers/scsi/scsi_error.c
@@ -967,6 +967,7 @@ void scsi_eh_prep_cmnd(struct scsi_cmnd *scmd, struct scsi_eh_save *ses,
 	ses->data_direction = scmd->sc_data_direction;
 	ses->sdb = scmd->sdb;
 	ses->result = scmd->result;
+	ses->resid_len = scmd->req.resid_len;
 	ses->underflow = scmd->underflow;
 	ses->prot_op = scmd->prot_op;
 	ses->eh_eflags = scmd->eh_eflags;
@@ -977,6 +978,7 @@ void scsi_eh_prep_cmnd(struct scsi_cmnd *scmd, struct scsi_eh_save *ses,
 	memset(scmd->cmnd, 0, BLK_MAX_CDB);
 	memset(&scmd->sdb, 0, sizeof(scmd->sdb));
 	scmd->result = 0;
+	scmd->req.resid_len = 0;
 
 	if (sense_bytes) {
 		scmd->sdb.length = min_t(unsigned, SCSI_SENSE_BUFFERSIZE,
@@ -1029,6 +1031,7 @@ void scsi_eh_restore_cmnd(struct scsi_cmnd* scmd, struct scsi_eh_save *ses)
 	scmd->sc_data_direction = ses->data_direction;
 	scmd->sdb = ses->sdb;
 	scmd->result = ses->result;
+	scmd->req.resid_len = ses->resid_len;
 	scmd->underflow = ses->underflow;
 	scmd->prot_op = ses->prot_op;
 	scmd->eh_eflags = ses->eh_eflags;
diff --git a/include/scsi/scsi_eh.h b/include/scsi/scsi_eh.h
index 3810b340551c..6bd5ed695a5e 100644
--- a/include/scsi/scsi_eh.h
+++ b/include/scsi/scsi_eh.h
@@ -32,6 +32,7 @@ extern int scsi_ioctl_reset(struct scsi_device *, int __user *);
 struct scsi_eh_save {
 	/* saved state */
 	int result;
+	unsigned int resid_len;
 	int eh_eflags;
 	enum dma_data_direction data_direction;
 	unsigned underflow;
-- 
2.21.0

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20191001074839.1994-1-damien.lemoal%40wdc.com.
