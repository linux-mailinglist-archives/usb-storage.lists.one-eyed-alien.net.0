Return-Path: <usb-storage+bncBCU3TE7MRIPRBZW5SC5AMGQERJVEADA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oa1-x45.google.com (mail-oa1-x45.google.com [IPv6:2001:4860:4864:20::45])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A64F9D7C4C
	for <lists+usb-storage@lfdr.de>; Mon, 25 Nov 2024 09:01:44 +0100 (CET)
Received: by mail-oa1-x45.google.com with SMTP id 586e51a60fabf-2967f717d96sf2460626fac.1
        for <lists+usb-storage@lfdr.de>; Mon, 25 Nov 2024 00:01:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1732521702; cv=pass;
        d=google.com; s=arc-20240605;
        b=aj6KGSXHdcc8VHlq1xMG3BzsTGa3F1HqIcU9snHhdvaOwQ9c0NFsCUtEaJhLkh6y0V
         YGGDVzRa/FJk27Plc/vvJdhn1MY0RADuVhipNHa+YmHaXAKSVCwCNKtBhoQNNa65VQjx
         QhYlcG/f+uLKKUV8BUKWvDL6x1svtsbPFelhi5NpMrvcE3asB9mvzxAb+8xoTC1itGTg
         HwXY7yKxBXhPr+BZsoTxuA2B0hM+9LYBa7ZorXUcvVTZ464OioLG1iNukrDG9b8XJ2wg
         l1vGJNtxNXIqM6BWsux/SdTI+VDerszbFVFKNX83/fQqIvSXKjXHsv2iS0vrcRcJe0Hk
         9+RA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:mime-version:references
         :in-reply-to:subject:cc:to:from:date:sender:dkim-signature;
        bh=f8z5nNzD6GTaf6gMKXCts0LvGiyl+gg1cpuDveKdW1I=;
        fh=RNS9yaa5nDe5rz7yYQiT8h/AWv8gca3s9MDrZ30JIII=;
        b=QVSVFXYz41jFRN8r3RqV84cWw12AI+Lj3S7819sMTDv/YOFxcV/CUsKPtN7kUvCwfV
         DezhCP/4qgTV0TAFik/N23Ken1Euv0ToMRoYVeXnauKkFjMyndKGgWpkBidW+5ueMdEa
         w4SHPV+y3+wjX6eUC3sOHuWQWA3xYHOPeoih3VVyroiwLaL1xFkA9uxpDAa163+qJgNV
         lEL/VwGRnglzQJz85c3pIkdWSRN74cVbV04eP8ngmBWQsQpzLPpoXZo2Nc0nUXz+lMfp
         gzTZjWGbL7lxTssH0jAeDbrIRlB//54FWEozNDx/Y+RkTeQ2wxAcDRcLjqZueETle8XX
         kxow==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=neutral (body hash did not verify) header.i=@163.com header.s=s110527 header.b=A5GMbgja;
       spf=pass (google.com: domain of 18500469033@163.com designates 220.197.31.2 as permitted sender) smtp.mailfrom=18500469033@163.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1732521702; x=1733126502; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:message-id:mime-version:references:in-reply-to
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=f8z5nNzD6GTaf6gMKXCts0LvGiyl+gg1cpuDveKdW1I=;
        b=BtQnFkG0Q3swEP5Pwnpn9TN2FDgx3m7MePbqU+kHML3CwfpSXMiq2JOwphUPzbKITY
         s4/dBMCOHA5zlT+FbvrC5zEUm+Mv1omouCAgSh5pgCq/j8qOEH5eCbqy2KZmeUB0D25u
         efF5abG1DipwKtj9YiVEbdeil8/lqUrQplM4c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732521702; x=1733126502;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:message-id
         :mime-version:references:in-reply-to:subject:cc:to:from:date
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=f8z5nNzD6GTaf6gMKXCts0LvGiyl+gg1cpuDveKdW1I=;
        b=lKP4Ru8TC+qP1nfPaeKCWEWxg8hBbGlsnm5L19oXwSbcDgD3vFWBLKdq+zmPXswBFQ
         aAn9DWlPLy0YeaSei4beYi9tztfYk1z0OlzS8zhsx4vFeY2zOYtGvU8xwRTMEWEeSYKj
         SGJpVoZAgo47pGD/7hEqkjaKpVf8ug7do5zezAF2TI/4LD2Ty/5ysYlLCSLx8JR5QpzM
         rD44ZGzqgMG45In5ZWU40Ap3t9Mg+0OsKsWNAmoXlluAvQtgGt0gXCx3XMxKfOAyikiT
         +qLQIBIinN00MOp6ES2noF9eO9DlpTClYYUfUU3XMB6VQc1+k6uMCcVen9sAiw5KBxxe
         8iWA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUz6eb2MnHO2cnquTNwDl1VyKWaUpiAHrVN5ddFBAM6VmCG1G1nw0zrq4oh5o6mtD7lZZJklg==@lfdr.de
X-Gm-Message-State: AOJu0YwpDPsPZO7EMUS6Ut8SEwaBGKp6UdR8/AJDal5M/PXSuu1spOon
	TdGXcOj9sToWJ4DwubcTkjDWSKetEKDPLU7L0fjIN/5s6/lmWKzzwwgeBEWah3c=
X-Google-Smtp-Source: AGHT+IGCe165v4Hj9hRzhMyQ0FdMJLl993OdqSefiloUGd+relh5T8rJc7GtUZiJBE8WXfqlU2EOWw==
X-Received: by 2002:a05:6871:3215:b0:297:241b:1471 with SMTP id 586e51a60fabf-297241b15a5mr6171588fac.41.1732521702534;
        Mon, 25 Nov 2024 00:01:42 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6870:3925:b0:296:d05:22 with SMTP id 586e51a60fabf-296fcc12176ls2334074fac.1.-pod-prod-06-us;
 Mon, 25 Nov 2024 00:01:41 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUuWVxqazY2Qjc8EHGVtVQ7fF7+8VKhfuHpNcqbgvnompZxcCeNIj3/3slK0mN7ognukNw9ZzsiJtJ36w==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6870:6b06:b0:27b:5abb:7def with SMTP id 586e51a60fabf-29720c17c7dmr10671695fac.20.1732521701456;
        Mon, 25 Nov 2024 00:01:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1732521701; cv=none;
        d=google.com; s=arc-20240605;
        b=ShA/oXfgfyZ41it/J5E37eCqPOD7rReHuNVIrkFw5HZGL+k2pMz/tmRjl+QTe0mAqi
         +yW2T2pQXTIiCkqY/pD/oGkGi3bdyrKMUoZdSJmMRIWQ1glqU29wSjhuQDpTsVJkKQGj
         BHCMWKPFwiZHLHGKlkGYVl0YPaSdJq50EIdHxIBB93H+xD5Uon/cxHjBiPcugCFGT2hZ
         PJhdoo3OO/VYJB4VXynL3oTn1eYHgaOBteUicgBlZf5J0vym7EiCG1zuJ8pV2XwTI4rl
         4psonQeBa6ePuFSIRQhkx2OCTjZ0/Y2hTwyVp9So0XENNyFk1BVfWGQeYKYyCBlyUziW
         HONg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=message-id:mime-version:content-transfer-encoding:references
         :in-reply-to:subject:cc:to:from:date:dkim-signature;
        bh=PsOdm12MrlwKZegNo+S1+FmJ9rMaTJQ1GPPbnbBfyQM=;
        fh=KM4gxFMF34Pj4LTDJXYYuOb6bZDcepCD7Z6FRIrVgjs=;
        b=OXkIU7VtZY+FzwDVXV5tZ6RHJWvM9/VYqzmhC5xYiwYTjvdcJJ0PbBnLLuJUxP9dqy
         uBVan8i5wo53M+QW0cb6JVjtJ0gPHX98HK/WdDU+CsKRWYIR7ztgJYyvaovoY6CtaR8J
         VCRS6b8PoFN9N5laBVoOVaagRutnrcOOzhy6Pw3+uLDV9eGkSJyORUS5s49ZZA4UtD4m
         sADsh74VUurmM0RJa+OePBVBhQM83xBzqzxHmQfIjLrCvDZu/qcaUCfI6LiALSj3PHFl
         7rhc8k80bnVjtOAKbtDtACvxLBAAK4w+xmCirVr+TpJr603oiFo6Hpei7pcGinZR1W25
         gDrw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=neutral (body hash did not verify) header.i=@163.com header.s=s110527 header.b=A5GMbgja;
       spf=pass (google.com: domain of 18500469033@163.com designates 220.197.31.2 as permitted sender) smtp.mailfrom=18500469033@163.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=163.com
Received: from m16.mail.163.com (m16.mail.163.com. [220.197.31.2])
        by mx.google.com with ESMTP id 41be03b00d2f7-7fbcc40ebfasi8898770a12.443.2024.11.25.00.01.40
        for <usb-storage@lists.one-eyed-alien.net>;
        Mon, 25 Nov 2024 00:01:41 -0800 (PST)
Received-SPF: pass (google.com: domain of 18500469033@163.com designates 220.197.31.2 as permitted sender) client-ip=220.197.31.2;
Received: from 18500469033$163.com (
 [2001:0DB8:6ca2:a596:4eef:3859:5c34:2a04, 52.131.113.184] ) by
 ajax-webmail-wmsvr-40-123 (Coremail) ; Mon, 25 Nov 2024 16:01:36 +0800
 (CST)
X-Originating-IP: [2001:0DB8:6ca2:a596:4eef:3859:5c34:2a04, 52.131.113.184]
Date: Mon, 25 Nov 2024 16:01:36 +0800 (CST)
From: "Dingyan Li" <18500469033@163.com>
To: gregkh@linuxfoundation.org, stern@rowland.harvard.edu
Cc: linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, 
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re:[PATCH v1] usb: storage: add a macro for the upper
 limit of max LUN
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20240801(9da12a7b)
 Copyright (c) 2002-2024 www.mailtech.cn 163com
In-Reply-To: <20241030083858.46907-1-18500469033@163.com>
References: <20241030083858.46907-1-18500469033@163.com>
X-NTES-SC: AL_Qu2YAPmZvk4i4CKbYOkfmkgbhek8X8q5uPQj3IBeOJ5+jAnp+yQ6TW5SInTW4se0FzGTmgmGSiBk289mf5Zyb40Wj8mf/yvwNFtCAWzJXRhGVg==
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Message-ID: <56abaf44.86c3.19362571bee.Coremail.18500469033@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: eygvCgDnz4HgLkRnw00vAA--.59492W
X-CM-SenderInfo: jprykiiquwmiitt6il2tof0z/1tbioBagy2dCFEWY3wADst
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-Original-Sender: 18500469033@163.com
X-Original-Authentication-Results: mx.google.com;       dkim=neutral (body
 hash did not verify) header.i=@163.com header.s=s110527 header.b=A5GMbgja;
       spf=pass (google.com: domain of 18500469033@163.com designates
 220.197.31.2 as permitted sender) smtp.mailfrom=18500469033@163.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=163.com
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

Hi Experts,

Any thoughts on this patch?

Regards,


At 2024-10-30 16:38:58, "Dingyan Li" <18500469033@163.com> wrote:
>The meaning of this value is already used in several places,
>but with constant values and comments to explain it separately.
>It's better to have a central place to do this then use the macro
>in those places for better readability.
>
>Signed-off-by: Dingyan Li <18500469033@163.com>
>---
> drivers/usb/gadget/function/f_tcm.c          | 8 ++------
> drivers/usb/gadget/function/storage_common.h | 2 +-
> drivers/usb/storage/transport.c              | 8 ++------
> include/linux/usb/storage.h                  | 8 ++++++++
> 4 files changed, 13 insertions(+), 13 deletions(-)
>
>diff --git a/drivers/usb/gadget/function/f_tcm.c b/drivers/usb/gadget/function/f_tcm.c
>index 15bb3aa12aa8..e1914b20f816 100644
>--- a/drivers/usb/gadget/function/f_tcm.c
>+++ b/drivers/usb/gadget/function/f_tcm.c
>@@ -441,14 +441,10 @@ static int usbg_bot_setup(struct usb_function *f,
> 			pr_err("No LUNs configured?\n");
> 			return -EINVAL;
> 		}
>-		/*
>-		 * If 4 LUNs are present we return 3 i.e. LUN 0..3 can be
>-		 * accessed. The upper limit is 0xf
>-		 */
> 		luns--;
>-		if (luns > 0xf) {
>+		if (luns > US_BULK_MAX_LUN_LIMIT) {
> 			pr_info_once("Limiting the number of luns to 16\n");
>-			luns = 0xf;
>+			luns = US_BULK_MAX_LUN_LIMIT;
> 		}
> 		ret_lun = cdev->req->buf;
> 		*ret_lun = luns;
>diff --git a/drivers/usb/gadget/function/storage_common.h b/drivers/usb/gadget/function/storage_common.h
>index ced5d2b09234..11ac785d5eee 100644
>--- a/drivers/usb/gadget/function/storage_common.h
>+++ b/drivers/usb/gadget/function/storage_common.h
>@@ -131,7 +131,7 @@ static inline bool fsg_lun_is_open(struct fsg_lun *curlun)
> #define FSG_BUFLEN	((u32)16384)
> 
> /* Maximal number of LUNs supported in mass storage function */
>-#define FSG_MAX_LUNS	16
>+#define FSG_MAX_LUNS	(US_BULK_MAX_LUN_LIMIT + 1)
> 
> enum fsg_buffer_state {
> 	BUF_STATE_SENDING = -2,
>diff --git a/drivers/usb/storage/transport.c b/drivers/usb/storage/transport.c
>index 9d767f6bf722..e6bc8ecaecbb 100644
>--- a/drivers/usb/storage/transport.c
>+++ b/drivers/usb/storage/transport.c
>@@ -1087,13 +1087,9 @@ int usb_stor_Bulk_max_lun(struct us_data *us)
> 	usb_stor_dbg(us, "GetMaxLUN command result is %d, data is %d\n",
> 		     result, us->iobuf[0]);
> 
>-	/*
>-	 * If we have a successful request, return the result if valid. The
>-	 * CBW LUN field is 4 bits wide, so the value reported by the device
>-	 * should fit into that.
>-	 */
>+	/* If we have a successful request, return the result if valid. */
> 	if (result > 0) {
>-		if (us->iobuf[0] < 16) {
>+		if (us->iobuf[0] <= US_BULK_MAX_LUN_LIMIT) {
> 			return us->iobuf[0];
> 		} else {
> 			dev_info(&us->pusb_intf->dev,
>diff --git a/include/linux/usb/storage.h b/include/linux/usb/storage.h
>index 8539956bc2be..51be3bb8fccb 100644
>--- a/include/linux/usb/storage.h
>+++ b/include/linux/usb/storage.h
>@@ -82,4 +82,12 @@ struct bulk_cs_wrap {
> #define US_BULK_RESET_REQUEST   0xff
> #define US_BULK_GET_MAX_LUN     0xfe
> 
>+/*
>+ * If 4 LUNs are supported then the LUNs would be
>+ * numbered from 0 to 3, and the return value for
>+ * US_BULK_GET_MAX_LUN request would be 3. The valid
>+ * LUN field is 4 bits wide, the upper limit is 0x0f.
>+ */
>+#define US_BULK_MAX_LUN_LIMIT   0x0f
>+
> #endif
>-- 
>2.25.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/56abaf44.86c3.19362571bee.Coremail.18500469033%40163.com.
