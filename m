Return-Path: <usb-storage+bncBDTZTRGMXIFBBSOVRGQAMGQEGHYYQPY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wm1-x348.google.com (mail-wm1-x348.google.com [IPv6:2a00:1450:4864:20::348])
	by mail.lfdr.de (Postfix) with ESMTPS id 263696AA24C
	for <lists+usb-storage@lfdr.de>; Fri,  3 Mar 2023 22:46:50 +0100 (CET)
Received: by mail-wm1-x348.google.com with SMTP id l20-20020a05600c1d1400b003e10d3e1c23sf3425253wms.1
        for <lists+usb-storage@lfdr.de>; Fri, 03 Mar 2023 13:46:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1677880010; cv=pass;
        d=google.com; s=arc-20160816;
        b=nRdq3AsX7kjWT0JZnEsamWKbZbHVMDfGjbddHr75v+8svzPL2DGjzZoDGN00uVDlDD
         AlHFSeZAeXt8IgEoPz7sX5xS60lbC2QBe/Hn8/Nipe/PkK0dgZi0ubE1H65xksvKqBq6
         KQIpkcbr/HJc4VDrThkE0qzAzuG+DTGi4FOsoqk1ROGBMdQeqvYbUjR6TtQTBg7pRp8h
         Pv1G3s5DKjdD7ebaVlo+X/j0N5zxPS7upsEjl3qmBBKlkqKBSfa0wMojz0BST98Rh+hD
         +mSjWYhN92EN9hhJPRqP84bUmEyFTE5MdNcE/CgbXdAq3KjqFny3vICBdsHF3URlUqbK
         xoag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=UJONLUr6jrwEG/9O8DNhZ81cawBmf0IfousB0LBQ4QA=;
        b=KOr3ehjUzeYClvBwTcWol6+ZKJCrjvTHyN4EYw7Ofb8x/Bug9HVAGmtGky+Y/k2gUK
         ODrWD7Qo9gKP7Gp3KlGU/vR36QROEX4t4mXJUHONxIxDccUBJ6jUNzSOpvB4pETxKvfB
         ByTDfGh+HXIAE9OqnDMRTcnIqTv89SoWiiBzZaTHy72sznS/HTSKO/ljy6ZZCiGjb2J6
         d9+Weq1llo/YS02Uii7hndS9zEWzkU57w0U6Pk4yr25fE0zRuvK8FuTqxjeVWgZT3TtL
         Lp1yrUDCFO8ppDq5cEUt7sTJzVyX/TtJhXQlPmzeegwmRNCnkidm325k3Vb7H5XWDFWv
         NR1w==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=pRdjjusK;
       spf=pass (google.com: domain of sashal@kernel.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UJONLUr6jrwEG/9O8DNhZ81cawBmf0IfousB0LBQ4QA=;
        b=br+uetvWTmZ3QFkpWkWEkl2qRGFRP7a0mxPiCQ1ILdZGy/jlvXBYG5ifikNkDjAYe4
         k4YAFdgZ1SdNwDYekkFJUXS4nodUi/QDzUU8hcW+O4tZoGNWtuMNXO7w3G5JRKXG8TWl
         wFlo8DoLPDtuytaTSWp9YbTQjWv88zbOOz28s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UJONLUr6jrwEG/9O8DNhZ81cawBmf0IfousB0LBQ4QA=;
        b=TI2l5B9MkA2wUKYsTcnjjFfwV1FmRvIoCoI1yvInZd5o4lOojZsYfPvzmA1D7PiN+l
         3NR2KrmZFCC73RcQXvVlZeZHm1VIazVf4KbaykiGWpjiqVFORf/UVWu3uCPp2KtYKFhS
         UdaT+tr1ym2u2DSsr8oRe7hCPpq6nxZ1aC4pN1/RQcm3ZenbSmrer0N0DmL52mjjBQNS
         Pe+j0qddO+YzrET95RARgv9ia/VrYPSE5Q8WJ2e73fnMxN/Bwev+9gIdhxiZwORH3yiJ
         mVQHwf8YaVRC2GS84NiMC+2Zo90VxtKvnfA5X9IkBqt/jrFj8sDbQjIxZ621RMLkEVk/
         8dBA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AO0yUKUeJKhmQYlyASrDT+hinPjEIbPIBKT4r4HKugcgmyODn0ntx5A1
	QbcHXPDjj/BTpEB1qcKCAmD51A==
X-Google-Smtp-Source: AK7set850iKERFP5jfc8GRXkP6AulW2RiT6QiDhGOq2bSZRpPc7Y6eSOSpC6QZLzp3TN6GkjLIK5bQ==
X-Received: by 2002:adf:eb42:0:b0:2ca:c865:51b4 with SMTP id u2-20020adfeb42000000b002cac86551b4mr753636wrn.9.1677880009547;
        Fri, 03 Mar 2023 13:46:49 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6000:1842:b0:2c5:55ca:3a3b with SMTP id
 c2-20020a056000184200b002c555ca3a3bls5913573wri.1.-pod-prod-gmail; Fri, 03
 Mar 2023 13:46:48 -0800 (PST)
X-Received: by 2002:a5d:5582:0:b0:2c7:fc9:c51c with SMTP id i2-20020a5d5582000000b002c70fc9c51cmr2149552wrv.9.1677880007890;
        Fri, 03 Mar 2023 13:46:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1677880007; cv=none;
        d=google.com; s=arc-20160816;
        b=efD2XGdA6fyjohz56+h9JXebblY91HQ0EXB5vPVcX6NNKAmMFv+5/nRvPy09Vp2KHb
         af6z4kYJZ/PDjPF7/LAg7u0Fz2tY4Ud9itOGnoL4mMa6/g7UwQ4HHaKkREcq59XmvfPw
         lgAi+Otlew19FEbSbiHccgseX/7N0A7uthmnUmPPvYc1JW3NM9LhYKFhlCKJtAIbZJqx
         Hw/NxplDHYODXTUrPooZ3VGRrTuWkaAtQMS+L+vWkRiOkn4RRYWWYp8GhkHbhtkZfKCX
         d2t4nTNYk1vnJC0pBBkqIVV14hARnXtZnDJXXZw8YTv5UWDKCwNqPHqiby+DcSDGylgU
         ML4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=pdC7iQ6KKjLNIpU2Qgi2WWNpPDMfjuoHY8oPdeH29Ns=;
        b=Arhg6DxcjbF29tuaDXqHMFS6qGOfcrauo2nGoHCCXlo1RvXf2CZezY1+LGE7FzZlcx
         YHSawVaA4KBDCM+BmiIKgHG2t86hSHFmo1tv94uA0PR3HUg/3mfwcLBRxWgDAPS0xoBn
         tA+tSF3ZAdliL3Nq4ZcaRdv+ceEUDUOow4tctQIkvGWEqbGEfnU1sVhUxzTJSOLHGRuY
         m3nr2GC5kuZEHkEEkZOq3nezdwyjedGpNqNH7NEwdAe2Z1QvwSYHW3Frnz1Wi0UmuL7a
         pOl3ALL/cBTvVcZ8RzxBL3IQvey/YOKD2ql1RGWEVAe5GWi0q8RndLK5drZuI0T5jvoD
         0BuQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=pRdjjusK;
       spf=pass (google.com: domain of sashal@kernel.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from ams.source.kernel.org (ams.source.kernel.org. [145.40.68.75])
        by mx.google.com with ESMTPS id p18-20020adfce12000000b002c3e3a2b2ffsi2587966wrn.809.2023.03.03.13.46.47
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2023 13:46:47 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 145.40.68.75 as permitted sender) client-ip=145.40.68.75;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 86CEEB81A09;
	Fri,  3 Mar 2023 21:46:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 790B2C433A1;
	Fri,  3 Mar 2023 21:46:46 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Alan Stern <stern@rowland.harvard.edu>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sasha Levin <sashal@kernel.org>,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] [PATCH AUTOSEL 5.15 34/50] USB: ene_usb6250: Allocate
 enough memory for full object
Date: Fri,  3 Mar 2023 16:45:15 -0500
Message-Id: <20230303214531.1450154-34-sashal@kernel.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230303214531.1450154-1-sashal@kernel.org>
References: <20230303214531.1450154-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=pRdjjusK;       spf=pass
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
index 6012603f3630e..97c66c0d91f4d 100644
--- a/drivers/usb/storage/ene_ub6250.c
+++ b/drivers/usb/storage/ene_ub6250.c
@@ -939,7 +939,7 @@ static int ms_lib_process_bootblock(struct us_data *us, u16 PhyBlock, u8 *PageDa
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20230303214531.1450154-34-sashal%40kernel.org.
