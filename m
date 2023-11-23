Return-Path: <usb-storage+bncBAABBP7H7OVAMGQEKVZ7NKI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc47.google.com (mail-oo1-xc47.google.com [IPv6:2607:f8b0:4864:20::c47])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F8F77F5870
	for <lists+usb-storage@lfdr.de>; Thu, 23 Nov 2023 07:40:00 +0100 (CET)
Received: by mail-oo1-xc47.google.com with SMTP id 006d021491bc7-581da174501sf646513eaf.2
        for <lists+usb-storage@lfdr.de>; Wed, 22 Nov 2023 22:40:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1700721599; cv=pass;
        d=google.com; s=arc-20160816;
        b=eerrMXSO365Y1RMSKj/BAYqwfW51IkpaU+hDRB8oSS3P6nD6EK3YDynYxNKBsel9ja
         /IZUsuzuhEtb5g7hJbKvQ5pcDsiS+fWC9UE3AnBhqfBicdN7nGenrDZoB60ysKDHlTkL
         J2uwYmdkHi917B87zPsWPKRdl7M2Td0zxWwib9TwRUSu618mAj63m0bt6lOX/N6EJyV7
         kr0TdW4O/2Tyf+ctBBkUIQgjtRvhs12qRoz47O/6pniFeqaySYbg5+1FnQFZGfzC83se
         1cjrssQmPKh8SMRzbaDYXptNv/k/EIGfiBcCIQ9tOamQe4xYR9Of8M99ltA29xSNktYH
         kgBg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=aiEefdD+wlc841jxsv00OUz6nG13wfMHWnpE1i6ugB8=;
        fh=H9BNKxD/d/tAbpGhAMXCoGmLbu0jZq1JrpSkr5/pSqk=;
        b=S+pVnqohq6xgqcE5Z0V37Tk4z2hTWGFdc/yIWBUP0WIA7dbNMwMCSJ7PA5oEHaT/bw
         qAx9xv4g0TmFFuc+hrIRVjBsXPgRlGI1CMVOM97vr4XluYuNJtRuKVl2AcwZR4DBHc6p
         IDPsqfmwOFd1CpxyoyFVrpVkfL7N3mnIVzhLgAR5N9abLCUz7ObG/+uwqC2FwJJmCkBi
         HZ5OU/I6vOZqTDY06ex9RZzpB3O+W+HC6fhJFUuLBsiuwlyDFhJx0dUJvATAbbZwJhtI
         DFQpbSXA9wxDyGBXs5AMi81KUON/2dcKw7cUgMouH/4c4prZUF5EBUkoJF3LC3IEArae
         gcYQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of u202112004@hust.edu.cn designates 202.114.0.240 as permitted sender) smtp.mailfrom=u202112004@hust.edu.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1700721599; x=1701326399; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=aiEefdD+wlc841jxsv00OUz6nG13wfMHWnpE1i6ugB8=;
        b=LcEtClt1RwC3GV3e7YTqOlp1FfGhsV9SWQ5kibKut0Ff11/rISl5wgwx9d/rB8Z+gC
         XgEWM+AxsJxP8YITeGzBm81r2icJqH95H3Gjt2IjCCPYMSbTJu4+2CjUySVArLH8ZWum
         /vZ+OH51E7rR55wDCjEHKVPxn43CKCBSBCksA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700721599; x=1701326399;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aiEefdD+wlc841jxsv00OUz6nG13wfMHWnpE1i6ugB8=;
        b=q3YpRJQwc/KttGZU8wO16OO0emhdyTZoU9pz2DXD7baETtNmRoPZePfhYM8delxpSd
         Vuszv7chdr7pkcjiwurlE//W37Hpd7aESZbXFaLfJ0MYO7QCAorAO9AMXL0p9YUR192X
         s32hwUk886KikvsR2pm7Q7/IIpEqK9dV5ryu+3eKBUoWytSHgq313LYlJgw7OTc0iXFC
         ql9oUFGO0y3lJsklg0/B6RpW3/y/D2usqbuYSiBxyNG59GCRNaxpLR9RC+FNbhejwVki
         q9CqMC9nSC+jGQb86JOJCiyQede8zrl3wSBNLSbtI97M6wyUgvRVHhXZXZX8+9rt1GAk
         YerQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOJu0Yxi8qW+xoqa1zE6O41xCuB1B9/Ss5ZbVkdJYVGtRlkqSEvuI9V8
	z0Z1YV7JDheieiTuHG5Z2Mn8fg==
X-Google-Smtp-Source: AGHT+IH8UytLPomq1RWL0qrEOWYxYoj1GwLfZbZ5LblwKO5vDpRbYxuvKFmjuQG0ypGN5YEFBz48mg==
X-Received: by 2002:a05:6820:1ca3:b0:589:d6c7:8573 with SMTP id ct35-20020a0568201ca300b00589d6c78573mr5854846oob.3.1700721599148;
        Wed, 22 Nov 2023 22:39:59 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6820:1503:b0:576:64f2:fd89 with SMTP id
 ay3-20020a056820150300b0057664f2fd89ls441218oob.1.-pod-prod-09-us; Wed, 22
 Nov 2023 22:39:58 -0800 (PST)
X-Received: by 2002:a4a:b682:0:b0:58d:1c7e:688b with SMTP id v2-20020a4ab682000000b0058d1c7e688bmr64681ooo.0.1700721598724;
        Wed, 22 Nov 2023 22:39:58 -0800 (PST)
Received: by 2002:a05:6808:f09:b0:3b3:ed04:dbd0 with SMTP id 5614622812f47-3b83d8fdde2msb6e;
        Wed, 22 Nov 2023 22:34:52 -0800 (PST)
X-Received: by 2002:a17:903:18c:b0:1c6:2ae1:dc28 with SMTP id z12-20020a170903018c00b001c62ae1dc28mr5408827plg.36.1700721291718;
        Wed, 22 Nov 2023 22:34:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1700721291; cv=none;
        d=google.com; s=arc-20160816;
        b=vbzZFMqX8qZ5Z2FMZRICUYDxxjQ6ecIuWaSRt/AysSDTjWtEDdmF2q34t3TGS14VcJ
         NihyBvl0Yl+dsWy/iJcckjDxV0NbxpIIpek97kDkt5n7CZGyVQdJdH/XZ2Y7vQ8CScKx
         HGdrY3a3tFEviIBjW1u8+t3Cl63uBL5HnoX52zEy8VB/TsUu6M8mLJUNWulcx/+HjPFD
         S2cwS9yxHcFqQnDUebe14oIi6XphmOgg0p3Wpjxl4AA5hn+PGy3mfNdYZhZ53+BGmeUa
         Dcitc5qt/4tAXdLNT5+JP61r+PjOtSjmeK6yYK99VXMtX1cE9Yt4n1NEAUCO7PWYeYdx
         93Bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=BXaF/sz9u2Bftm9flj5188OuiMt+1GxD2FMKUB9lTYs=;
        fh=H9BNKxD/d/tAbpGhAMXCoGmLbu0jZq1JrpSkr5/pSqk=;
        b=0fjDZqOcLQaxyHVhSR25wesDYdZbuiEOAW7tf5ewl2YcmUWy/1cEVuNxMyus696n/v
         hKrffIAvCkCHJSdRl3nSxBHult0WD5Qfk0OtAQQtd938onIIpILZQMqzr+dLG6gfdFuk
         DamO+J1pVukANxE/AMrdhiCykVLFRXLTyErJ93QEO1KabjkMRtnJrNaAkwsIrZmSJdxO
         Vi6ncmq+UfJcuEysXwBYFyTJ+d3uEDJmZDMDi/b87tmzdZG6/G+BqMcQbRtijJQ3HvLw
         2HVpK62rGZyGkewQ7+1I1Xu0jHGxoQrzE0tWSLQXBOGh/X3rgR/zA3GjBIJqnX5/E3ML
         NXaw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of u202112004@hust.edu.cn designates 202.114.0.240 as permitted sender) smtp.mailfrom=u202112004@hust.edu.cn
Received: from hust.edu.cn (mail.hust.edu.cn. [202.114.0.240])
        by mx.google.com with ESMTP id u9-20020a170902bf4900b001bde9e8a29fsi532451pls.183.2023.11.22.22.34.51
        for <usb-storage@lists.one-eyed-alien.net>;
        Wed, 22 Nov 2023 22:34:51 -0800 (PST)
Received-SPF: pass (google.com: domain of u202112004@hust.edu.cn designates 202.114.0.240 as permitted sender) client-ip=202.114.0.240;
Received: from hust.edu.cn (unknown [172.16.0.52])
	by app1 (Coremail) with SMTP id HgEQrADX9dp18l5l2o4qAA--.60871S2;
	Thu, 23 Nov 2023 14:34:29 +0800 (CST)
Received: from pride-PowerEdge-R740.. (unknown [222.20.126.131])
	by gateway (Coremail) with SMTP id _____wD3IlBu8l5lvogNAA--.11029S2;
	Thu, 23 Nov 2023 14:34:28 +0800 (CST)
From: Ren Xiao <u202112004@hust.edu.cn>
To: Alan Stern <stern@rowland.harvard.edu>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: hust-os-kernel-patches@googlegroups.com,
	Ren Xiao <u202112004@hust.edu.cn>,
	Dongliang Mu <dzm91@hust.edu.cn>,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org
Subject: [usb-storage] [PATCH] usb: storage: transport: Fix switch-case
 indentation typo in 'transport.c'
Date: Thu, 23 Nov 2023 01:34:16 -0500
Message-Id: <20231123063417.2625808-1-u202112004@hust.edu.cn>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CM-TRANSID: HgEQrADX9dp18l5l2o4qAA--.60871S2
X-Coremail-Antispam: 1UD129KBjvJXoW7tryfCw1DWr1rtF4rAryfXrb_yoW8KFWkp3
	ZrWrZxAa4Uta1fZFW3AF4jqa45CF18GryxG3srtwnYvFsFyFyrZry8tw1vga4aqrsxXFy0
	gwsFqFZ0ka45urJanT9S1TB71UUUUUJqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUUm2b7Iv0xC_Zr1lb4IE77IF4wAFc2x0x2IEx4CE42xK8VAvwI8I
	cIk0rVWrJVCq3wA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK021l84ACjcxK6xIIjx
	v20xvE14v26w1j6s0DM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26r4UJVWxJr1l84ACjcxK
	6I8E87Iv67AKxVW0oVCq3wA2z4x0Y4vEx4A2jsIEc7CjxVAFwI0_GcCE3s1ln4kS14v26r
	1Y6r17M2vYz4IE04k24VAvwVAKI4IrM2AIxVAIcxkEcVAq07x20xvEncxIr21l57IF6xkI
	12xvs2x26I8E6xACxx1l5I8CrVACY4xI64kE6c02F40Ex7xfMcIj64x0Y40En7xvr7AKxV
	W8Jr0_Cr1UMcIj6x8ErcxFaVAv8VW8uFyUJr1UMcIj6xkF7I0En7xvr7AKxVWxJVW8Jr1l
	Ox8S6xCaFVCjc4AY6r1j6r4UM4x0Y48IcxkI7VAKI48JMxAIw28IcxkI7VAKI48JMxAIw2
	8IcVCjz48v1sIEY20_GFW3Jr1UJwCFx2IqxVCFs4IE7xkEbVWUJVW8JwCFI7km07C267AK
	xVWUXVWUAwC20s026c02F40E14v26r1j6r18MI8I3I0E7480Y4vE14v26r106r1rMI8E67
	AF67kF1VAFwI0_Jw0_GFylIxkGc2Ij64vIr41lIxAIcVC0I7IYx2IY67AKxVWUCVW8JwCI
	42IY6xIIjxv20xvEc7CjxVAFwI0_Gr0_Cr1lIxAIcVCF04k26cxKx2IYs7xG6r1j6r1xMI
	IF0xvEx4A2jsIE14v26r1j6r4UMIIF0xvEx4A2jsIEc7CjxVAFwI0_Gr0_Gr1UYxBIdaVF
	xhVjvjDU0xZFpf9x07jysjUUUUUU=
X-CM-SenderInfo: rxsqjiarsqiko6kx23oohg3hdfq/
X-Original-Sender: u202112004@hust.edu.cn
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of u202112004@hust.edu.cn designates 202.114.0.240 as permitted
 sender) smtp.mailfrom=u202112004@hust.edu.cn
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

Adjusted the indentation of the switch-case code blocks which
start from line 1051 and line 1304.

Signed-off-by: Ren Xiao <u202112004@hust.edu.cn>
Reviewed-by: Dongliang Mu <dzm91@hust.edu.cn>
---
 drivers/usb/storage/transport.c | 46 ++++++++++++++++-----------------
 1 file changed, 23 insertions(+), 23 deletions(-)

diff --git a/drivers/usb/storage/transport.c b/drivers/usb/storage/transport.c
index 8f236854c83b..88d9f839d809 100644
--- a/drivers/usb/storage/transport.c
+++ b/drivers/usb/storage/transport.c
@@ -1049,10 +1049,10 @@ int usb_stor_CB_transport(struct scsi_cmnd *srb, struct us_data *us)
 
 	/* The second byte & 0x0F should be 0x0 for good, otherwise error */
 	switch (us->iobuf[1] & 0x0F) {
-		case 0x00: 
-			return USB_STOR_TRANSPORT_GOOD;
-		case 0x01: 
-			goto Failed;
+	case 0x00:
+		return USB_STOR_TRANSPORT_GOOD;
+	case 0x01:
+		goto Failed;
 	}
 	return USB_STOR_TRANSPORT_ERROR;
 
@@ -1302,28 +1302,28 @@ int usb_stor_Bulk_transport(struct scsi_cmnd *srb, struct us_data *us)
 
 	/* based on the status code, we report good or bad */
 	switch (bcs->Status) {
-		case US_BULK_STAT_OK:
-			/* device babbled -- return fake sense data */
-			if (fake_sense) {
-				memcpy(srb->sense_buffer, 
-				       usb_stor_sense_invalidCDB, 
-				       sizeof(usb_stor_sense_invalidCDB));
-				return USB_STOR_TRANSPORT_NO_SENSE;
-			}
+	case US_BULK_STAT_OK:
+		/* device babbled -- return fake sense data */
+		if (fake_sense) {
+			memcpy(srb->sense_buffer,
+			       usb_stor_sense_invalidCDB,
+			       sizeof(usb_stor_sense_invalidCDB));
+			return USB_STOR_TRANSPORT_NO_SENSE;
+		}
 
-			/* command good -- note that data could be short */
-			return USB_STOR_TRANSPORT_GOOD;
+		/* command good -- note that data could be short */
+		return USB_STOR_TRANSPORT_GOOD;
 
-		case US_BULK_STAT_FAIL:
-			/* command failed */
-			return USB_STOR_TRANSPORT_FAILED;
+	case US_BULK_STAT_FAIL:
+		/* command failed */
+		return USB_STOR_TRANSPORT_FAILED;
 
-		case US_BULK_STAT_PHASE:
-			/*
-			 * phase error -- note that a transport reset will be
-			 * invoked by the invoke_transport() function
-			 */
-			return USB_STOR_TRANSPORT_ERROR;
+	case US_BULK_STAT_PHASE:
+		/*
+		 * phase error -- note that a transport reset will be
+		 * invoked by the invoke_transport() function
+		 */
+		return USB_STOR_TRANSPORT_ERROR;
 	}
 
 	/* we should never get here, but if we do, we're in trouble */
-- 
2.34.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20231123063417.2625808-1-u202112004%40hust.edu.cn.
