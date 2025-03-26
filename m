Return-Path: <usb-storage+bncBAABBO5JSC7QMGQET2RVE7Y@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc45.google.com (mail-oo1-xc45.google.com [IPv6:2607:f8b0:4864:20::c45])
	by mail.lfdr.de (Postfix) with ESMTPS id 11762A7196A
	for <lists+usb-storage@lfdr.de>; Wed, 26 Mar 2025 15:52:46 +0100 (CET)
Received: by mail-oo1-xc45.google.com with SMTP id 006d021491bc7-60221ba69d1sf964601eaf.3
        for <lists+usb-storage@lfdr.de>; Wed, 26 Mar 2025 07:52:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1743000765; cv=pass;
        d=google.com; s=arc-20240605;
        b=QOTqT+6yiXS28Kl/FupG/VGbE7nM74TqIQ2pvCwT9zNVBnaLFPQJQnfuPFkacUXjUG
         0V4ARedHgRxq0u0BMAhZ21yLj0KWW9Anf3wMWBtUA5z4OOSdOS9u0eoxR3FaZ83mGIS9
         5r1f5a7PBX4yrbVesPrXFjIE8LhbNOQAGjc/5ZAVOYR0751vFs+EsHTinQJBmIMAyqCi
         zrrMTI+JPDoUS5slsZ9fg1Ye5VP07GBJBKyEIbuYgB6Z8lac5j209gaGmdx8uBUj2+ey
         PXbmVaTq56YnMPJDzPQq9o3hua3itcbov7Riwgxl9+ZfRqileJ03PkbqUfphWDo3YBCD
         2sWQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=gkDoSQ74DCTVF4oVo7CCxcELLy19MlaX4Fv9i+cIOjc=;
        fh=NAZCe1XOCEoQNm9NHZIqcjyaXxWuLVXF9/geTCwax5c=;
        b=QGbfE5oKvfaKqO3SVHkJENS8rD3RDq+Ba/4uT2Y4uJ7C8EpmCuXp1VoX3dDCfZMf7L
         sNf+O0tcKZ7J+sL/7aU35SvvRqfRML3KPNKDmjmTllasdYMbpW/9/JxB1NpshakwDz1i
         wsaizLcl4ZAP/Ihbf1YWLGwQCcofOrfonjGQyVunhNQbDFM3wfMXydBnJPCUbHSeXDDc
         /MI7JunCpzziyJhdnnTO+++OKMo+q0DRYaHzDQUhwwND3+L5ZGYpQdDENXvMfiz2nHxe
         3U1rN+6sFeKY43/xWaIzPQwmNDDwpcPjUgIDOa0yeetKxOtoTb/X/dfM5v3xqapG4BPo
         f43A==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of dengjie03@kylinos.cn designates 124.126.103.232 as permitted sender) smtp.mailfrom=dengjie03@kylinos.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1743000765; x=1743605565; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=gkDoSQ74DCTVF4oVo7CCxcELLy19MlaX4Fv9i+cIOjc=;
        b=HMBySTSBkWNvZhCkNE0sIstZJ6O/yvoraH1kj067x9j+E/ejliLe/lkceeUKdTlFSe
         eLvLfjNoSKKbQrBtGYUtcMsTXp+dkpCY8Zt3jmKey08wuiPDeac84czZCZPdqmZqLdRF
         J+Veo6r4O3DQ+CJWkKDHZ5yd7xsctVzKImCEg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743000765; x=1743605565;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gkDoSQ74DCTVF4oVo7CCxcELLy19MlaX4Fv9i+cIOjc=;
        b=mQMICGSFL9X6qlIOAw1J17p0VGnNU6jDtUYswoSBpuvHm3B/UuF60bGd2ITvxuDnCA
         buziMxzEa5tfUMuTAlTDI46nWXwn2jdIl2db1/p39jkaik64WM0lgWdQrIC7313jgTuB
         vhTDwIJpItp28SZ21IPguoxAe/GMTcRwCI+HvxW1jW5kNNgTNdPV7qmvXSd1fsHgNVJU
         S36vMkqcgSgPz5jM1ajGhuydgxEw4x7Y1QPOor98gy5i91IZGCYlAQkN/zNn8plr19+2
         6SdfCsnWKLY65GYSfCQgK2ZpCvXgqdPil1wA27ES16LkPL44Qs5iAoMqNa6ISEeKb3fS
         eu1A==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCW98B/SSkE37YjGuHwKGcU3VkUUx9ici/PBRhlmcK6kWhRZZnjvIYC91bWC3BK+th4qdjmYPg==@lfdr.de
X-Gm-Message-State: AOJu0YyZO/Y2BCAp0oO1BfeWrzfoCeKLk7hTDSCjqHYTMzVRi0ybwMb/
	VgbL1NoJLXlZNjiYc5UCd8K+kBBr7JPOI8NlhymUjJLNM3tlV99D9Hn5XlkHF1o=
X-Google-Smtp-Source: AGHT+IEBraWenUSWg0OGEz8hMf21UmoYpVM4oPV8nFK2uM3xviwKcVljahAQt65QF67VcBFld1SFMQ==
X-Received: by 2002:a05:6820:507:b0:601:a927:351e with SMTP id 006d021491bc7-6027866171emr23545eaf.7.1743000764560;
        Wed, 26 Mar 2025 07:52:44 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=ARLLPALoDz4vEScXxz7vvi77gHM2JOMbStpruuF8UnFylyhOEA==
Received: by 2002:a4a:e645:0:b0:602:25ca:d66b with SMTP id 006d021491bc7-60228f058bdls2048892eaf.2.-pod-prod-02-us;
 Wed, 26 Mar 2025 07:52:43 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVJ8wxETPJl4UxzlzRRIqVK8jMylN9erd5UluDpUtA2Gojy96xejRFsx8i/z8ymFFL49XqHRUi6t7pqDw==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6808:2191:b0:3f6:7cbe:32a0 with SMTP id 5614622812f47-3febf70b1femr11971786b6e.4.1743000763106;
        Wed, 26 Mar 2025 07:52:43 -0700 (PDT)
Received: by 2002:a05:6808:428b:b0:3fa:da36:efcd with SMTP id 5614622812f47-3feefb746c4msb6e;
        Tue, 25 Mar 2025 19:20:34 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWihDQuW8Lzm95sZk0q328bydNURoMwwAB6CS1qlTBfLlnvBIAm7UmYPLU1xwrwkJ90as/vFUV8VXW3/Q==@lists.one-eyed-alien.net
X-Received: by 2002:a17:902:fc4b:b0:226:38ff:1d6a with SMTP id d9443c01a7336-22780c68a1amr307505145ad.7.1742955633240;
        Tue, 25 Mar 2025 19:20:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1742955633; cv=none;
        d=google.com; s=arc-20240605;
        b=UXkwb3E9ZDVxzqkwBsHxO7ILg/PtA+aGtAmzKyQ8mC/MIit1v2REv5AI66mO6rbPw3
         mVfpUtDD84pBLkn+kSpyKiPeO+kGivpx0IkDTlf/OuAaqx5EuZm/53OCf7KKcdeE1yix
         oWx7QmGgSRZCcFwnKEZGu0h0Y/LpPmiNLM76GvQrXuRfVrevrEjMRAlvSXlyHVaBtQ97
         fHdkTTK2JH5JRFD9n3ZtFih3XCSYdmnv30lbl/Y1bFou7Hw0hqllZt3gzJH+C3/YjLhj
         +CkS5cWFGXZ1uxWnTgZo8+KaB/PiinOiTNban3uh14SJeubm3KGJC6ilCdhZ0k8n9LZh
         p26w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=SnXYJtdr7daOWJXep7N9I+wXG3nK3/OHZw5YSAjaCpE=;
        fh=zMvlU3qEEEyX48UZDhGKvFyJ4TJoMQVjCOSRAIvSvgk=;
        b=VX4Uaj2u+76oxw55nUDdCEuPICLBoUOJc2xvCm4MLpoUqkL3zqbld75GfYUqi6nlWB
         9A8zEJJeCBfiywTnX+0HrQZAlG3T5oB+bxX8s2t5EtyoFbMDfrD7mli44iPfvPx1ya3T
         yJv1gTw+toqHUHxogcLaNbn95KhrlJhgl5vR7u8d9PcCShE8jLDjd4O8nwxjmogA2/XA
         45QvHICNbz2o8cnfSgT0XRmMksIhuf7XsU1uVFpUNB44m8Yb+oElOfcjDaXMLF+d1m5O
         qEws7CuPnLBusdaLuWaWjyxtxD2A7ulG3IsGHM3GKLzwOw+zoh11aBUwXqYGmCmF1hvG
         dT8g==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of dengjie03@kylinos.cn designates 124.126.103.232 as permitted sender) smtp.mailfrom=dengjie03@kylinos.cn
Received: from mailgw.kylinos.cn (mailgw.kylinos.cn. [124.126.103.232])
        by mx.google.com with ESMTPS id d9443c01a7336-227811bd1a0si178351075ad.332.2025.03.25.19.20.32
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Mar 2025 19:20:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of dengjie03@kylinos.cn designates 124.126.103.232 as permitted sender) client-ip=124.126.103.232;
X-UUID: e10e9b7c09e811f0a216b1d71e6e1362-20250326
X-CTIC-Tags: HR_CC_COUNT, HR_CC_DOMAIN_COUNT, HR_CC_NAME, HR_CC_NO_NAME, HR_CTE_8B
	HR_CTT_MISS, HR_DATE_H, HR_DATE_WKD, HR_DATE_ZONE, HR_FROM_DIGIT_LEN
	HR_FROM_NAME, HR_SJ_DIGIT_LEN, HR_SJ_LANG, HR_SJ_LEN, HR_SJ_LETTER
	HR_SJ_NOR_SYM, HR_SJ_PHRASE, HR_SJ_PHRASE_LEN, HR_SJ_WS, HR_TO_COUNT
	HR_TO_DOMAIN_COUNT, HR_TO_NO_NAME, IP_TRUSTED, SRC_TRUSTED, DN_TRUSTED
	SA_EXISTED, SN_UNTRUSTED, SN_UNFAMILIAR, SPF_NOPASS, DKIM_NOPASS
	DMARC_NOPASS, CIE_BAD, CIE_GOOD_SPF, GTI_FG_BS, GTI_RG_INFO
	GTI_C_BU, AMN_T1, AMN_GOOD, AMN_C_TI, AMN_C_BU
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.45,REQID:20e6d293-0125-4ee8-8d8d-b3dde439d568,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:5,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:5
X-CID-INFO: VERSION:1.1.45,REQID:20e6d293-0125-4ee8-8d8d-b3dde439d568,IP:0,URL
	:0,TC:0,Content:0,EDM:0,RT:0,SF:5,FILE:0,BULK:0,RULE:Release_Ham,ACTION:re
	lease,TS:5
X-CID-META: VersionHash:6493067,CLOUDID:dd945ea749cb232eb412d347a8c5ed73,BulkI
	D:250326100250278RLHOF,BulkQuantity:1,Recheck:0,SF:19|38|66|72|78|102,TC:n
	il,Content:0|50,EDM:-3,IP:nil,URL:0,File:nil,RT:nil,Bulk:40,QS:nil,BEC:nil
	,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 0,NGT
X-CID-BAS: 0,NGT,0,_
X-CID-FACTOR: TF_CID_SPAM_FSD,TF_CID_SPAM_SNR
X-UUID: e10e9b7c09e811f0a216b1d71e6e1362-20250326
X-User: dengjie03@kylinos.cn
Received: from localhost.localdomain [(10.44.16.150)] by mailgw.kylinos.cn
	(envelope-from <dengjie03@kylinos.cn>)
	(Generic MTA with TLSv1.3 TLS_AES_256_GCM_SHA384 256/256)
	with ESMTP id 54479125; Wed, 26 Mar 2025 10:20:26 +0800
From: Jie Deng <dengjie03@kylinos.cn>
To: stern@rowland.harvard.edu,
	gregkh@linuxfoundation.org
Cc: linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org,
	xiehongyu1@kylinos.cn,
	Jie Deng <dengjie03@kylinos.cn>
Subject: [usb-storage] [PATCH] usb-storage: apply IGNORE_UAS for Realtek on RTL9210
Date: Wed, 26 Mar 2025 10:20:19 +0800
Message-Id: <20250326022019.1593669-1-dengjie03@kylinos.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Original-Sender: dengjie03@kylinos.cn
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of dengjie03@kylinos.cn designates 124.126.103.232 as permitted
 sender) smtp.mailfrom=dengjie03@kylinos.cn
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

The UAS mode of Realtek USB_HDD is reported
to fail to work on several platforms with
the following error message, then after
re-connecting the device will be offlined
and not working at all.

[  143.361210] sd 9:0:0:0: [sdg]
tag#6 uas_eh_abort_handler 0 uas-tag 2 inflight: CMD IN
[  143.372377] sd 9:0:0:0: [sdg]
tag#6 CDB: Read(10) 28 00 00 00 00 10 00 00 10 00
[  143.382908] sd 9:0:0:0: [sdg]
tag#5 uas_eh_abort_handler 0 uas-tag 1 inflight: CMD IN
[  143.394080] sd 9:0:0:0: [sdg]
tag#5 CDB: Read(10) 28 00 00 00 00 00 00 00 10 00
[  143.404610] sd 9:0:0:0: [sdg]
tag#4 uas_eh_abort_handler 0 uas-tag 4 inflight: CMD IN
[  143.415782] sd 9:0:0:0: [sdg]
tag#4 CDB: Read(10) 28 00 00 00 00 30 00 00 10 00
[  148.437916][ 22] xhci_hcd 0000:ba:02.0:
xHCI host not responding to stop endpoint command.
[  148.462295][ 22] xhci_hcd 0000:ba:02.0:
xHCI host controller not responding, assume dead

The Realtek Manufacturer's device cannot
initialize properly using the UAS driver,
so we need to switch it to usb-storage

Signed-off-by: Jie Deng <dengjie03@kylinos.cn>
---
 drivers/usb/storage/uas-detect.h | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/storage/uas-detect.h b/drivers/usb/storage/uas-detect.h
index 4d3b49e5b87a..23579a2a1181 100644
--- a/drivers/usb/storage/uas-detect.h
+++ b/drivers/usb/storage/uas-detect.h
@@ -125,8 +125,11 @@ static int uas_use_uas_driver(struct usb_interface *intf,
 	 */
 	if (le16_to_cpu(udev->descriptor.idVendor) == 0x0bda &&
 			le16_to_cpu(udev->descriptor.idProduct) == 0x9210 &&
-			(udev->manufacturer && !strcmp(udev->manufacturer, "HIKSEMI")) &&
-			(udev->product && !strcmp(udev->product, "MD202")))
+			(((udev->manufacturer && !strcmp(udev->manufacturer, "HIKSEMI")) &&
+			(udev->product && !strcmp(udev->product, "MD202"))) ||
+			((udev->manufacturer && !strcmp(udev->manufacturer, "Realtek")) &&
+			(udev->product && !strcmp(udev->product, "RTL9210")))
+			))
 		flags |= US_FL_IGNORE_UAS;
 
 	usb_stor_adjust_quirks(udev, &flags);
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250326022019.1593669-1-dengjie03%40kylinos.cn.
