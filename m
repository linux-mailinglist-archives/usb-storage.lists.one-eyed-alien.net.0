Return-Path: <usb-storage+bncBDTZTRGMXIFBBB6XRGQAMGQE77QYXRY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wm1-x348.google.com (mail-wm1-x348.google.com [IPv6:2a00:1450:4864:20::348])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E5086AA2AB
	for <lists+usb-storage@lfdr.de>; Fri,  3 Mar 2023 22:50:00 +0100 (CET)
Received: by mail-wm1-x348.google.com with SMTP id u19-20020a05600c00d300b003eb24ce58cesf1394425wmm.9
        for <lists+usb-storage@lfdr.de>; Fri, 03 Mar 2023 13:50:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1677880200; cv=pass;
        d=google.com; s=arc-20160816;
        b=Oi0c55X1kpIza6yqaRVt4FScnhtGXd/MZgR849ClD+hxr9wLNtZ80aJrwTblg9sE1T
         TdIcSOdBeqV4beSt0HUxaTrDT960BUEU6JBuC4OXulpJElpYyuYd8xdvZHPGI1nhgvZA
         PS/d/z/2vizXIe2iLj8CqTMT7vyy6LdVVPCw3JAUBKeaUY08SBC3ru0J8kOAnWGjtWpJ
         2fKnHF2k18TP8K/HtAin1X7xXkJT6hG3/Tgf7t6ahuYBmd6mXtMcuErXuCBUftJ9d0d+
         /oLj1Cl4Xt0k1nk+1WnnEVczRyDpbnT4xHcCOhsU2HvjEqNkJQ60juCQR5tWOpGGQFOD
         ya1A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=uY7ZUN1LYmt/v+qI3U628gTNnQmcncwmnaD9+NHOywE=;
        b=ML0Qr5gCauCYjz+lZ7WQch9KON/p8AbfADO6MXsvVBJAFWU+6ht0P1No0Up6zyOBHo
         fwRpe+t/n7BWVODFZX9L14t/2dIpGvZk05THi0yRpH/vVFLUruBMI8rE+l8590fHEn9T
         UYanqPzboNvVxqp7KuOAaN2gcrgCm/RfokC9GdN6PGkY/LcP9JrGDvP8vtBuB7eB1HQZ
         1g0zaCbQtvX2QoYTU7zjDpD1y6zSshQKGbYZCUGdxekSTzi8hcSD9cxJ2V65Tn6hiKBp
         SO9tdFwsPPED0LMHb25ULVI+STTz+8/H99c03mJihCACw60Vs48qM56mFZ6IqvqyPUF+
         vVrA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=bGppp6yL;
       spf=pass (google.com: domain of sashal@kernel.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uY7ZUN1LYmt/v+qI3U628gTNnQmcncwmnaD9+NHOywE=;
        b=Y7fc3XORTVtVdsj1A52e1uQDwoDgWiqE8sMVAqJxOk64DNp+OcVQQAcgqVFOw47COl
         /3SuF5xibpJJAtIxy+hOdJI0bmNu0iVBeN/pkSX5YM3XWls4DryWKxF7DsdsFDfJapRI
         WmkAJgQKmvwcsyJxFeIVdcfpVj0LkLXNTJJc4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uY7ZUN1LYmt/v+qI3U628gTNnQmcncwmnaD9+NHOywE=;
        b=iJVUCv+0Djq3Sj3NJUOtOhUhkuDHe1P+ZRiD7yYaUR78MTLdf/dRYwIpmhr7xEuOhZ
         Cgo7KDWGbcV4eiySdTbEHLlNv4EuEvgRrA/nfXNIasGQU0MIa6Y518yyB3rwlEkdSuY/
         rQw3ynvYZeNjWxCP7IzgwCdq/jLb9M4Uxsxr9D11rYpURLYeGQnqjOTSxGqfA912B4XH
         HxoAHrKtlP0tUpNlPFPOiUxRSZJd9P4U7QAXsMcT7Cws5OgB44WQTyxYIAhglPD3wSiV
         JpL8/SOVwUu7Trn2OukIo1/lBERZFYK4pVy1fUkPctfctJJakiXKR4tARNMA5QP3ZJkz
         8+1Q==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AO0yUKUvUJJBlbmr8igw6gYdOiaZsYgAkaT1QPxccqScgoa9T1uwY58r
	VR5eTmSahxtYPCYQkUA0vvQHEA==
X-Google-Smtp-Source: AK7set+8zlsBh6WViktKFfsA1uBjcC4M3TnXhouRMoJn/vNC3sHJ1iJ+xY8ppjoEKApJRfz/yhAvXg==
X-Received: by 2002:adf:e34c:0:b0:2c7:195c:5b13 with SMTP id n12-20020adfe34c000000b002c7195c5b13mr687344wrj.0.1677880200068;
        Fri, 03 Mar 2023 13:50:00 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6000:1788:b0:2c5:5262:2e24 with SMTP id
 e8-20020a056000178800b002c552622e24ls5886510wrg.2.-pod-prod-gmail; Fri, 03
 Mar 2023 13:49:58 -0800 (PST)
X-Received: by 2002:adf:f087:0:b0:2c4:489:fe93 with SMTP id n7-20020adff087000000b002c40489fe93mr4978081wro.21.1677880198776;
        Fri, 03 Mar 2023 13:49:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1677880198; cv=none;
        d=google.com; s=arc-20160816;
        b=VwfwFMZvgHjwYrTShMXwYFHx6HaDy/PmgiOy4T/7H1/Vq6LHQhGf0GxJSme4b1vS+i
         yZdYQTefN6Xfx7uzU7J4g0yZY4cvptq+l+NW8S/LaOiDt4aIGOrvv1KKw8mtnyC9z+SN
         rs8dBiLJyxOCRJjr+fTzF32cz62fYEAFuDUvIbBcy4Q5QkQOt0qLRhXc4G3UuiahIHx/
         TDfKF28jzIN3q6DEvLu4IDR23eLkXuXjoN5UN7Y/prCdL+3p2lAaKrL7MaD+i4G2T22S
         /O+vNOyggfdzJ9f4teZvE/F15vlBX8F4W1SmNUZv1KUi+miwmO+vV8gm14xX4q/RcAyT
         /q2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=LMwnnSSOgY0qJpwYsq+EiIVLvVRQzoxKkBty1TrPo7s=;
        b=JDNJTGik5sNS2UqCs5RCxV0kVIvDegk5rfW+mMHpO6vL8mjjENGiHSzvLgMudipd8m
         uPaWP8aGtqK533mcgbP6qaBmpz35IMHBB0IDotcWW5YKH2BrIkVPDqrpQZBNBT7SYmki
         8wwPF8ou2ThOh6vBVY1wg2t1C3Nk0OIV3UGTTjigaueUW9pibD9Far6Y2EEk1ynx0Y4B
         v3SkSDdwU4U694YAml/cvKYdIqyBLxFSPSXjfCFnul1gCShU+HE1KH5bHMZGxYXCEblb
         J2pStCZAns1LDRI9IUyADtRhBtKMVSqMqWv1SNTvlYuiAd1JjPI2OUbqQpWZwXMcn2b9
         08SA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=bGppp6yL;
       spf=pass (google.com: domain of sashal@kernel.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from ams.source.kernel.org (ams.source.kernel.org. [145.40.68.75])
        by mx.google.com with ESMTPS id n13-20020a5d484d000000b002c594da9249si2224431wrs.705.2023.03.03.13.49.58
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2023 13:49:58 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 145.40.68.75 as permitted sender) client-ip=145.40.68.75;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 7DE39B81A4F;
	Fri,  3 Mar 2023 21:49:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3FDE7C433EF;
	Fri,  3 Mar 2023 21:49:57 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Alan Stern <stern@rowland.harvard.edu>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sasha Levin <sashal@kernel.org>,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] [PATCH AUTOSEL 4.14 09/11] USB: ene_usb6250: Allocate
 enough memory for full object
Date: Fri,  3 Mar 2023 16:49:35 -0500
Message-Id: <20230303214938.1454767-9-sashal@kernel.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230303214938.1454767-1-sashal@kernel.org>
References: <20230303214938.1454767-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=bGppp6yL;       spf=pass
 (google.com: domain of sashal@kernel.org designates 145.40.68.75 as permitted
 sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

From: Kees Cook <keescook@chromium.org>

[ Upstream commit ce33e64c1788912976b61314b56935abd4bc97ef ]

The allocation of PageBuffer is 512 bytes in size, but the dereferencing
of struct ms_bootblock_idi (also size 512) happens at a calculated offset
within the allocation, which means the object could potentially extend
beyond the end of the allocation. Avoid this case by just allocating
enough space to catch any accesses beyond the end. Seen with GCC 13:

../drivers/usb/storage/ene_ub6250.c: In function 'ms_lib_process_bootblock':
../drivers/usb/storage/ene_ub6250.c:1050:44: warning: array subscript 'struct ms_bootblock_idi[0]' is partly outside array bounds of 'unsigned char[512]' [-Warray-bounds=]
 1050 |                         if (le16_to_cpu(idi->wIDIgeneralConfiguration) != MS_IDI_GENERAL_CONF)
      |                                            ^~
../include/uapi/linux/byteorder/little_endian.h:37:51: note: in definition of macro '__le16_to_cpu'
   37 | #define __le16_to_cpu(x) ((__force __u16)(__le16)(x))
      |                                                   ^
../drivers/usb/storage/ene_ub6250.c:1050:29: note: in expansion of macro 'le16_to_cpu'
 1050 |                         if (le16_to_cpu(idi->wIDIgeneralConfiguration) != MS_IDI_GENERAL_CONF)
      |                             ^~~~~~~~~~~
In file included from ../drivers/usb/storage/ene_ub6250.c:5:
In function 'kmalloc',
    inlined from 'ms_lib_process_bootblock' at ../drivers/usb/storage/ene_ub6250.c:942:15:
../include/linux/slab.h:580:24: note: at offset [256, 512] into object of size 512 allocated by 'kmalloc_trace'
  580 |                 return kmalloc_trace(
      |                        ^~~~~~~~~~~~~~
  581 |                                 kmalloc_caches[kmalloc_type(flags)][index],
      |                                 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  582 |                                 flags, size);
      |                                 ~~~~~~~~~~~~

Cc: Alan Stern <stern@rowland.harvard.edu>
Signed-off-by: Kees Cook <keescook@chromium.org>
Link: https://lore.kernel.org/r/20230204183546.never.849-kees@kernel.org
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/usb/storage/ene_ub6250.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/storage/ene_ub6250.c b/drivers/usb/storage/ene_ub6250.c
index 79f77179fd9b5..08b946d27277a 100644
--- a/drivers/usb/storage/ene_ub6250.c
+++ b/drivers/usb/storage/ene_ub6250.c
@@ -948,7 +948,7 @@ static int ms_lib_process_bootblock(struct us_data *us, u16 PhyBlock, u8 *PageDa
 	struct ms_lib_type_extdat ExtraData;
 	struct ene_ub6250_info *info = (struct ene_ub6250_info *) us->extra;
 
-	PageBuffer = kmalloc(MS_BYTES_PER_PAGE, GFP_KERNEL);
+	PageBuffer = kzalloc(MS_BYTES_PER_PAGE * 2, GFP_KERNEL);
 	if (PageBuffer == NULL)
 		return (u32)-1;
 
-- 
2.39.2

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20230303214938.1454767-9-sashal%40kernel.org.
