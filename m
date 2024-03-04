Return-Path: <usb-storage+bncBCS25756ZQFBBO72SSXQMGQE6XTF65A@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oi1-x247.google.com (mail-oi1-x247.google.com [IPv6:2607:f8b0:4864:20::247])
	by mail.lfdr.de (Postfix) with ESMTPS id BFD3786F8D2
	for <lists+usb-storage@lfdr.de>; Mon,  4 Mar 2024 04:17:17 +0100 (CET)
Received: by mail-oi1-x247.google.com with SMTP id 5614622812f47-3c1ea5b57dbsf1105988b6e.1
        for <lists+usb-storage@lfdr.de>; Sun, 03 Mar 2024 19:17:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1709522236; cv=pass;
        d=google.com; s=arc-20160816;
        b=P/FOD7yC18bJdWfCAEUcnWLipZNHT/rDLnNLOgxY1SwHbbqQc9TovIR+PzeUJDiNoy
         sqKbMJ7GZrCLeoyToyc1GWeHz0D3mS0NMmKZnbq79YdL66GrwfdOkefR1toW1FRGaMu6
         H7j9x+6sEpDb4+8CmE1rXVj1EioMo9XsQ9+JThHnXNDVd8iZzMbUcfmBxnME+uxlLgKs
         jqZ8rWc7KbaM+ipkfTHdhBkHOHCxqy21vrKT5/w1ro3NGPLQ7yOQaw3aGGbvGTr7DUVI
         MGCd/4lhxRYoywCnW8ELiT9PSHHn6DXth6O1u3FTJtVwKzZ/meGqq5TvHvM7U5aQfg0P
         R5yw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=3yLtxHnB2TZBPYMGBpoy7DKdPiTHbERe9Zx6UqsZCig=;
        fh=n5e0NFPa6j+7jL+J6gHzt2ufM+HOXM3NVIMxzMLMnEs=;
        b=PxI6TEd/43Dzs/CEIcqDtjK4jrDsx6UdWXe3yGFAdQCVPDIhxay5Ys5JbcEfCGhOl8
         N2BsyqZTSUEhJn1qk9AdwlfdHBngMRnZ/P62T02qC/YFeL8sJOsub/fhx5y3uQFXrQtV
         gjhYH2l46m7fdreAY6wv8xgxgRf/+dEbWmjnJogOg62APPLIOMY/wuCliN//z38wneHX
         koFItNz40BfMV/jFtLI6HO5UwDkfiJyrc7sDE6AEY3q7qKWhC9X83B0LU4Te0uFZyvCW
         INwM0T28TIL2byWyBTfk6dlji9NgcI2mocvwn3ElokAp5dWsTpmDjqUsmEtFJNvzWAUw
         +aNA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of huxiaoying@kylinos.cn designates 124.126.103.232 as permitted sender) smtp.mailfrom=huxiaoying@kylinos.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1709522236; x=1710127036; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=3yLtxHnB2TZBPYMGBpoy7DKdPiTHbERe9Zx6UqsZCig=;
        b=QhI0O5NykNOAwt2KlqfP7aTRu2XrRh2HSxU0LwT67bDuu0pgsWkN2aYXKjinfHINJ5
         8sKuHLlZyA2XDFHGBFDvE9YXddzZmfI8DnfgVjbRXmhcQrQ9l/hr7FZW5+uYeIzBUXLi
         90v8P+HqAnltZNTKQN0sBRCrepmtT54MCtmjM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709522236; x=1710127036;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=3yLtxHnB2TZBPYMGBpoy7DKdPiTHbERe9Zx6UqsZCig=;
        b=tgSXg1LSfkzEM8knNEQlEDnXv6kfbaN0xHKlqeUdobJbRPxUoMN5nXsBhmBt6T+Yel
         zCo72kNHwUGRRj0c39KF1SHgy0JN04bDbWcvqrm2ujzSEADH6ixxL/OnLLfsTKzqt5qf
         uiW8MRtfi6/I+qbKQuc6QA317skqehkQ/hkP3f99XGWuaEz9DE1vwze4FrXI0Z11qi9o
         3p1NHiwGQZbqqRQReAJKyZ+HvZw8kiRCOLZ4bDAMJbP3w0zqkQ4nvSjboZk8Zu8GE3tr
         Zl9ZX7pLhOpFxo26UdQh7vmMjALlAlNitvSCOQEXrvJ7IOSXZAXXszU4Go/kFo/mGrwQ
         Y3mA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUwG9RGwOQCOLlzR3qIQtACMkyxi5uqKDzbMK5zkE7XnZIFNlqaSBXHDemxHRRFk6Wme0foawyDPu1OVaVUv9nDK0++B6kdlJEF
X-Gm-Message-State: AOJu0Yw4nbK9m3pJ226Wd1+fSZw/zSciEjX07me6U/onnnLAIG8Ki1TS
	Fm6FLTXNcByAgYBtIxvH9dCCXmEjvKx8Ty/6xb1SYywwWZBgjvTee6ZHUmS8ucI=
X-Google-Smtp-Source: AGHT+IHR0Sw6nziN8jn8NTbqYOcj6iEG5jhjqrZAoHFeAkkUEtQSAXlaHUNg0t7iyHpv+ODOaDiY4A==
X-Received: by 2002:a05:6870:231b:b0:219:f2cd:98cf with SMTP id w27-20020a056870231b00b00219f2cd98cfmr9710807oao.2.1709522236088;
        Sun, 03 Mar 2024 19:17:16 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6870:bf18:b0:21f:e033:3f23 with SMTP id
 qh24-20020a056870bf1800b0021fe0333f23ls1940167oab.0.-pod-prod-05-us; Sun, 03
 Mar 2024 19:17:15 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUJsZbj8Nzy9K48bx7dVOHEbChabGvUs8OAFVfY1N8Fs3I+g+DWaLLhxPCFqwpyX2Edb+wxvdlpotPPCewnI+DJgIxDxk/3zfY7+dNgqtqxhkIoLhM=
X-Received: by 2002:a05:6871:2886:b0:21e:de18:38d with SMTP id bq6-20020a056871288600b0021ede18038dmr10196593oac.27.1709522234750;
        Sun, 03 Mar 2024 19:17:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1709522234; cv=none;
        d=google.com; s=arc-20160816;
        b=ZiULtR3wa00kUkRIElVNrHB1ff4AL3Y+LlWNdk6fw6AoDnMBpV04XKZzkDtevIvXy1
         I40B2KzFKztKKQ6jp3EhPGtDTfx2tM34cuwoIxdK6CPhmGyeQuNX+AKy0D8Q02iekTFB
         fvepNrY0rPdSLzIkMzS2fMrNXkJSC3O78R6htKXCbRmE/UTQR3ZS+C7kEJdzcUQm56mv
         dbFnU1RK6ZmS+bdYUOdt5ob+3XdHQBqYFaRBVl9NF7Gst4T7T1B/GsYIHmRHTaJOCBTI
         uMHLQOuWHgPegwHV3v/uOfAsYK2Lykx2mif2l6RyGIhfpcffyju0qxGBt7XQYTB8GkOF
         0vGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=lj7Rs0qKoLVCIqM/UxQngOLW98guxb5Z67c6T7LnWao=;
        fh=FAooH7GKYYyIXakJ97bU/D9yPwMuBGyjp3/Wi/5Lzlc=;
        b=q8+nZJbqm0i2JFHUYtmCy7UcSVSjT8KWQpMhBE1pYBiM5BzoyNglzOHUiuOu9QDAXs
         Ow5pPutHFqxVITSi6gSeg20sUtQjjmTUKDY+5fxVL6Fj8MS/gLyZArvFKfvFiat4gUVh
         Hk8Meq05hro5loTLTynAp2hS4tfJVtf9v21gPiDLO9LrWdIS5TdtTzEuom+TIEpEOPGh
         NdvFgkkrzn4BsbhgQN3C1mZphznMtpVXC51mJ9wm4+eDK/DazHW/cry0IqgNC6J1n7Fw
         NNDsrAfVhElUR7wJxr9XVDqYlnJITAVuTW7Hja2idnBjzxyC8DJGFdQVPIhZAKYDrodk
         vefA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of huxiaoying@kylinos.cn designates 124.126.103.232 as permitted sender) smtp.mailfrom=huxiaoying@kylinos.cn
Received: from mailgw.kylinos.cn (mailgw.kylinos.cn. [124.126.103.232])
        by mx.google.com with ESMTPS id bd36-20020a056a0027a400b006e08068d6dbsi7741919pfb.265.2024.03.03.19.17.13
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 03 Mar 2024 19:17:14 -0800 (PST)
Received-SPF: pass (google.com: domain of huxiaoying@kylinos.cn designates 124.126.103.232 as permitted sender) client-ip=124.126.103.232;
X-UUID: 885d0ca386834035b293b24f6c48d103-20240304
X-CID-O-RULE: Release_Ham
X-CID-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.37,REQID:d37a901e-0f78-44e7-a3b6-2baebcb50536,IP:10,
	URL:0,TC:0,Content:0,EDM:0,RT:0,SF:-15,FILE:0,BULK:0,RULE:Release_Ham,ACTI
	ON:release,TS:-5
X-CID-INFO: VERSION:1.1.37,REQID:d37a901e-0f78-44e7-a3b6-2baebcb50536,IP:10,UR
	L:0,TC:0,Content:0,EDM:0,RT:0,SF:-15,FILE:0,BULK:0,RULE:Release_Ham,ACTION
	:release,TS:-5
X-CID-META: VersionHash:6f543d0,CLOUDID:466d1181-4f93-4875-95e7-8c66ea833d57,B
	ulkID:240304111709GTSTWZ2V,BulkQuantity:0,Recheck:0,SF:66|38|24|17|19|44|1
	02,TC:nil,Content:0,EDM:-3,IP:-2,URL:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC
	:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0,NGT
X-CID-BAS: 0,NGT,0,_
X-CID-FACTOR: TF_CID_SPAM_FAS,TF_CID_SPAM_FSD,TF_CID_SPAM_FSI,TF_CID_SPAM_SNR
X-UUID: 885d0ca386834035b293b24f6c48d103-20240304
X-User: huxiaoying@kylinos.cn
Received: from localhost.localdomain [(112.64.161.44)] by mailgw
	(envelope-from <huxiaoying@kylinos.cn>)
	(Generic MTA)
	with ESMTP id 91826270; Mon, 04 Mar 2024 11:17:07 +0800
From: Tom Hu <huxiaoying@kylinos.cn>
To: linux-kernel@vger.kernel.org,
	stern@rowland.harvard.edu,
	gregkh@linuxfoundation.org
Cc: linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	Tom Hu <huxiaoying@kylinos.cn>
Subject: [usb-storage] [PATCH v2] usb-storage: Add Brain USB3-FW to IGNORE_UAS
Date: Mon,  4 Mar 2024 11:16:56 +0800
Message-Id: <20240304031656.174888-1-huxiaoying@kylinos.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Original-Sender: huxiaoying@kylinos.cn
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of huxiaoying@kylinos.cn designates 124.126.103.232 as permitted
 sender) smtp.mailfrom=huxiaoying@kylinos.cn
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

The UAS mode of BRAIN USB_HDD is reported to fail to work on several
platforms with the following error message, then after re-connecting the
device will be offlined and not working at all.

[  622.518442][ 2] sd 8:0:0:0: [sda] tag#17 uas_eh_abort_handler 0 uas-tag 18
                   inflight: CMD
[  622.527575][ 2] sd 8:0:0:0: [sda] tag#17 CDB: Write(10) 2a 00 03 6f 88 00 00
                   04 00 00
[  622.536330][ 2] sd 8:0:0:0: [sda] tag#0 uas_eh_abort_handler 0 uas-tag 1
                   inflight: CMD
[  622.545266][ 2] sd 8:0:0:0: [sda] tag#0 CDB: Write(10) 2a 00 07 44 1a 88 00
                   00 08 00

These disks have a broken uas implementation, the tag field of the status
iu-s is not set properly, so we need to fall-back to usb-storage.

---
v2: remove junk information from patch.

Acked-by: Alan Stern <stern@rowland.harvard.edu>
Signed-off-by: Hu Xiaoying <huxiaoying@kylinos.cn>
---
 drivers/usb/storage/unusual_uas.h | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/usb/storage/unusual_uas.h b/drivers/usb/storage/unusual_uas.h
index 1f8c9b16a0fb..98b7ff2c76ba 100644
--- a/drivers/usb/storage/unusual_uas.h
+++ b/drivers/usb/storage/unusual_uas.h
@@ -83,6 +83,13 @@ UNUSUAL_DEV(0x0bc2, 0x331a, 0x0000, 0x9999,
 		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
 		US_FL_NO_REPORT_LUNS),
 
+/* Reported-by: Tom Hu <huxiaoying@kylinos.cn> */
+UNUSUAL_DEV(0x1234, 0x1234, 0x0000, 0x9999,
+		"Brain",
+		"External HDD",
+		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
+		US_FL_IGNORE_UAS),
+
 /* Reported-by: Benjamin Tissoires <benjamin.tissoires@redhat.com> */
 UNUSUAL_DEV(0x13fd, 0x3940, 0x0000, 0x9999,
 		"Initio Corporation",
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240304031656.174888-1-huxiaoying%40kylinos.cn.
