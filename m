Return-Path: <usb-storage+bncBDTZTRGMXIFBBR5OVO2QMGQEZQJEYSY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oi1-x248.google.com (mail-oi1-x248.google.com [IPv6:2607:f8b0:4864:20::248])
	by mail.lfdr.de (Postfix) with ESMTPS id 623E6943BD2
	for <lists+usb-storage@lfdr.de>; Thu,  1 Aug 2024 02:31:05 +0200 (CEST)
Received: by mail-oi1-x248.google.com with SMTP id 5614622812f47-3db12b297edsf7030016b6e.0
        for <lists+usb-storage@lfdr.de>; Wed, 31 Jul 2024 17:31:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1722472264; cv=pass;
        d=google.com; s=arc-20160816;
        b=nTGyPUrQbXVUyu7dviUucZI9z8VrrzN8T8DB8na2HDbMJKg1wIznfv0LtqRyDs5/10
         owutWux92GDRNuZbIHolbEiAftlZo90++2hzq7aO+KZF12tyM6/O3zStWADysiuQ7tEk
         /uqOAa0RGZp5hxI0/oMZT5xm74cErqfzuj7/lKZBgEYqmq2Aj1XxYTSKRoreH0OGRe0d
         qV1X4W0YaIP8ruOMtiXoV9YSVgepG4tUXvuYN2F25h8YGyYdw1qFZRtGNVbgbe/eREeg
         EUQqeeV8dEQo5R1etpSNGPfcdNhnc4dYZtk0NG0IU6RXA5X5udoRL5t2/rg3BCOPpwBH
         yhCA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=FbN35CYmLAkGQnPEZ6ohdxxCa/75TaXnSujECz9aLZU=;
        fh=im6KOmupdzwDP1vQ+JnJJ0RVF7W8sG1zCunvtqr/c2o=;
        b=wrVeYQiTTAej2/oQeL+1fseS+dT4EF43oMayAg2rC8tzgK0rmVMti3JRK3j1c0woiC
         C1M7gL3vucCwpYzO+S7IKeAx7YPDKAzy+sjh2NS0xxYaBZeqCfp1byB1XBcyv2DeNlw1
         I+OBwtdEVr6i2jaMKg//LShVrxWlueDRaF2JeSaz9abrTk2wEPW2h8P8X6Dfp0Z85xKw
         b9j73Bcy4v5BsDz1Nv6axKdtXS96FkyoLduYDZAdk945S5DN27fpsvI0zQQRpiCbW+nZ
         du1UoIBWNvcsnvaczlqSdOFwJtFN13B4bDC6s9hdIQ+GeOpVzHAEcnafUMGfRMky6FEH
         3MBw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=BePpeLE3;
       spf=pass (google.com: domain of sashal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1722472264; x=1723077064; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FbN35CYmLAkGQnPEZ6ohdxxCa/75TaXnSujECz9aLZU=;
        b=VKUpmun2cWBjWBRQevneRApzVX94WZeS4dd60JifhF3hPdH7WTO9rLXDe4WuCqdKOU
         /T5/si2Uk9V5pe1WbPyZPV8fEMRxRzIHdu19Ru7l3g5Y/Zy/dAV8qE0gD0vC0z7Ikv1+
         Y3iabWNNESIx98gOJDpD9vd5gMS9T963SobZs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722472264; x=1723077064;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FbN35CYmLAkGQnPEZ6ohdxxCa/75TaXnSujECz9aLZU=;
        b=rGiacVckq6uN4US2Kt7VYUfMLHC3WiiiZ27OLaF6mQU38Ffb3RTK8hZMPauR7lQBer
         e9LoT9XpdTtsXUgHR07Bl2+8vmDkYGQZT6l8PJ6RV4uQx0mLrNGrZZ++ucVlSoFRkDHw
         3ACKhwbdOZCG1rNmpugF9bUT4qiMQLH1ebDL9KB0/pQ3jy0xlo5chxH6l1V8J/8QyF8x
         hXdDeIsgyU6DHg3UFCuay+9J/RNIfwtR/Nk+bL63fe/gvO1B2zWQRk0zqH5vHGF2Xq1c
         2SpA3X9kvyq9U7hKbag88loT5swFXXpvFNDe1fLWrirPBNeEvMNeuq1SwQ/v0aNfdNcb
         sXSg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWkWUsxcpDsFEirB2F2R3cCDLI+jJOtASZXbxqhY04NkA9sPalzjmZVoO4UMGbWT1Bo0BPWw/4lgPJ/C+4Oo0ATC7THYbCme9ow
X-Gm-Message-State: AOJu0YxZkO2Q3dNsU7HPE+td2KvTbTmCNqR0vZqhiFmqn4FSkP8BfrVU
	PKoDEMkZiqBg5tpg/MWd6qF9r1cbnRBcsHhariedxqGZDYWh9pAAput2cJgzLB0=
X-Google-Smtp-Source: AGHT+IG/r0cpQcjzzqH2Jm7aqdwm4xqKqRa7nZpwUp0nsvO3cMrw/lKVkyKzVUKYydD6JEbxStvzdw==
X-Received: by 2002:a05:6870:e2d1:b0:260:e678:b65c with SMTP id 586e51a60fabf-2687a3bf11amr990315fac.9.1722472263938;
        Wed, 31 Jul 2024 17:31:03 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6870:c995:b0:267:df2e:ac74 with SMTP id
 586e51a60fabf-267df2ef958ls2790137fac.2.-pod-prod-03-us; Wed, 31 Jul 2024
 17:31:03 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUBI2YcoNQSn5jAc67Q90NMo1zTC6iIm20CIbUQuH+Ye8GtfiRegSKNhZr+ld4rS6LNSDRor/DEIhAawIPx0u+eLm3uR1sV57ikROccTedKwsN60Co=
X-Received: by 2002:a05:6870:328c:b0:262:32b0:dede with SMTP id 586e51a60fabf-2687a3b9c71mr1113633fac.7.1722472263033;
        Wed, 31 Jul 2024 17:31:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1722472263; cv=none;
        d=google.com; s=arc-20160816;
        b=n4U1Ce5CGDn8vqF17E18OQTJEKGgBhCLPRWsP4OeAD6n232qyzG3oIszs4NByeCVaF
         Prz8zlxFcA4NlNZrUwldKMb8LBIQRH5rijki6EqCgwgTyNKf6RwJDSBXT+0QHAFp5HU9
         P4ch7CHn2TyTEXMwkk738WXBLDMbfI4CNfQRLDt1VY6WyQ4AOQjTn3emGrYyMbVRAzyI
         lUHaTKjmQBXFtS653x8EMwgoNeHHMpWu6Jca1XSXor2Rb+uK/XFIe34AvUnfipZRbLXC
         rVdYNEelWwPee7eBlFYjS/eNnnImXRn5XW8As5MwVubnqhCkTBIZDY6T/HJv6bnETB6y
         YaEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=AB28pNoSDXv3gP5iD5cjfPqwhizCnglUVHSirYekejY=;
        fh=jgkb7am38yPjzZXkQAVozurBPG6OhskQIcxQ3YzqA1w=;
        b=zcOLbQuiF5ufqIVKpAzUyy8arXxngmIsboGhM7BdhQRIExXHz+1d1SzmC8Q1pUpyWw
         8hu6TXk2gvzHe8oQP84uIh3na2RN+GwnAwskoiJq6SBRE3uNzWo8jtJbzclRMiBtmFvV
         DHo5drDfkVEubBoIazzripDYSImUOXzyk5XHlOy+E6AYDmQsXjzkERgiEpWBvbC+SFzJ
         UHyNmku/0Vyxgu2j4Uaku271OvRTI5K3PJ1tDVGHAigdpyGLtwslM+lrnxYUXXbOtA84
         Net6jgT95TAdZYQTialpm57AD7NGs7FIX9rYUbAGBzild1QBadxf8Fg6ssH2Fs/9rWSO
         lgTw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=BePpeLE3;
       spf=pass (google.com: domain of sashal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by mx.google.com with ESMTPS id 586e51a60fabf-2653e921a49si7484953fac.187.2024.07.31.17.31.02
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Jul 2024 17:31:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id D4031624A7;
	Thu,  1 Aug 2024 00:31:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 68A5FC4AF0E;
	Thu,  1 Aug 2024 00:31:01 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Shantanu Goel <sgoel01@yahoo.com>,
	Oliver Neukum <oneukum@suse.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sasha Levin <sashal@kernel.org>,
	stern@rowland.harvard.edu,
	linux-usb@vger.kernel.org,
	linux-scsi@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] [PATCH AUTOSEL 6.1 48/61] usb: uas: set host status
 byte on data completion error
Date: Wed, 31 Jul 2024 20:26:06 -0400
Message-ID: <20240801002803.3935985-48-sashal@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240801002803.3935985-1-sashal@kernel.org>
References: <20240801002803.3935985-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.1.102
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=BePpeLE3;       spf=pass
 (google.com: domain of sashal@kernel.org designates 2604:1380:4641:c500::1 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

From: Shantanu Goel <sgoel01@yahoo.com>

[ Upstream commit 9d32685a251a754f1823d287df233716aa23bcb9 ]

Set the host status byte when a data completion error is encountered
otherwise the upper layer may end up using the invalid zero'ed data.
The following output was observed from scsi/sd.c prior to this fix.

[   11.872824] sd 0:0:0:1: [sdf] tag#9 data cmplt err -75 uas-tag 1 inflight:
[   11.872826] sd 0:0:0:1: [sdf] tag#9 CDB: Read capacity(16) 9e 10 00 00 00 00 00 00 00 00 00 00 00 20 00 00
[   11.872830] sd 0:0:0:1: [sdf] Sector size 0 reported, assuming 512.

Signed-off-by: Shantanu Goel <sgoel01@yahoo.com>
Acked-by: Oliver Neukum <oneukum@suse.com>
Link: https://lore.kernel.org/r/87msnx4ec6.fsf@yahoo.com
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/usb/storage/uas.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/usb/storage/uas.c b/drivers/usb/storage/uas.c
index af619efe8eabf..b565c1eb84b3b 100644
--- a/drivers/usb/storage/uas.c
+++ b/drivers/usb/storage/uas.c
@@ -422,6 +422,7 @@ static void uas_data_cmplt(struct urb *urb)
 			uas_log_cmd_state(cmnd, "data cmplt err", status);
 		/* error: no data transfered */
 		scsi_set_resid(cmnd, sdb->length);
+		set_host_byte(cmnd, DID_ERROR);
 	} else {
 		scsi_set_resid(cmnd, sdb->length - urb->actual_length);
 	}
-- 
2.43.0

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240801002803.3935985-48-sashal%40kernel.org.
