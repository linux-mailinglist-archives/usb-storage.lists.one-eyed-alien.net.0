Return-Path: <usb-storage+bncBDTZTRGMXIFBBUGTRGQAMGQEOGYT55Y@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oa1-x45.google.com (mail-oa1-x45.google.com [IPv6:2001:4860:4864:20::45])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F2666AA1C0
	for <lists+usb-storage@lfdr.de>; Fri,  3 Mar 2023 22:42:45 +0100 (CET)
Received: by mail-oa1-x45.google.com with SMTP id 586e51a60fabf-17679dc6e16sf1220415fac.7
        for <lists+usb-storage@lfdr.de>; Fri, 03 Mar 2023 13:42:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1677879762; cv=pass;
        d=google.com; s=arc-20160816;
        b=vaHajftB5xcXkZ+wpWMexj78wj+n3uhEUv6ZsuAjFpW3FzHkTjhmFyP/AnBmTJ3D2j
         2rE79GOcKPjVU2XfRATWfM2knPvgVtOvj6h4G8qpuYsTbUlEHY/3rzOVCnc7MTs50wqv
         it8kuuP5vgHVRKKSkU5oPXo6aeKdHw89rWHEpdDLgNzpThj/1QPoAankOIoc4O8YsyqJ
         TbwPJRmyJRnAnFfJpqAJ1P7Fc/8J/i9yuOWtvb2m2u66IAyhddMpEj5LbcR7lr/E5s/6
         DOIYe/FoVUB9x5a3fhxxld6FS0Pxv6JXh6xmglFN2Br0uNNCLQnyRKZFHP0aheNM1XVC
         D/CA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=K2EiedPCqtnvxJfe5tCBwZiFttcUosZfg6NEV0DF9o8=;
        b=GGfH3etzwXvAT2N4ZZSWOdYA2hw0Z29jwm1vNkjK9wnnXnuX6ML/auNBv0/bwwV513
         a+crI6O7BYO2oy2aicMwJRLfKp4ntEAwpM4F67IcY+m18/J534jm2YlkfH2WiFmOSo6R
         ely6UqUAeJKUpJMFfvLD5RrlcV73e5Gmtqt8FpWN1OZ1fZClQHlhhGzob8JZ46lPlRCQ
         4wZLD2aHiOdTeAdHPnm1fCATzm+IQdyzrTMJftY7B6sBMu+VhGL+0Jab9yMy0uFa+cYH
         Ad2g81+8+l6+nP7ss7JXwqO7O/nZrmFr3TjtnP8UuUOn0qVJFjzwtdkBksHg3dfwVtOi
         vx7w==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=bdru84Hm;
       spf=pass (google.com: domain of sashal@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=K2EiedPCqtnvxJfe5tCBwZiFttcUosZfg6NEV0DF9o8=;
        b=JfONTrMRCGox5nBs2PIaRDZ4NE6+8llPGztHmuh6mAdS3soCGkzkrayWDfuWkIpNE4
         epWskSCeyig79ntJyuT19EZZWRZ+xuW2Upslzj+hd5g4MQju6UGI+3Hg0C3Xd0Zmb+Lw
         zuRrxEzhRg/COB1SCVzUid67nb/YL9GJs4hBw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=K2EiedPCqtnvxJfe5tCBwZiFttcUosZfg6NEV0DF9o8=;
        b=mDwqulSEjeonCkUQzksMXpK+HEMLYs1IF7ALSAzgsLvqO1PsyNN4AyCx2zzjNmSVa1
         Ck3J6gFfVzegckhj7fWGyJce4jUiDm2ZB61hD2xkxDSYy9xgf745jOw/70MeViymkG1F
         Hi0fctpjtH1e5E+z8zDGPe8YTJFYz8Yvhr12xEzOQ3hogZcPjateDxVTB612cKqLROms
         TzaaxvKvKKVA/umx8hIq9rUed6wcDbanTiv4EiWTPsI86YZdu66Y3XXHs1s5cQF0z2x5
         CGJ0OmLG2qs1zsOcrx8/1w+hReOWlXdxGqh3mUsKZ6kNUVkR321luIQ+4R7Pc78m/IOi
         7jug==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AO0yUKXFYUvHFv/uiQ+yFbGhq1NuQuYywVSOy5sqh+7NOP8vdQLT1rmw
	p2Zhx+DGl7TAz4lIVLlB2xDW8w==
X-Google-Smtp-Source: AK7set8fp4qW+gyaBF3USX4f7MdXzatpxeuk4d181Yerjhc3kihV2zYNlj1CJXr2DZbrOM772lrXtA==
X-Received: by 2002:a4a:d5d2:0:b0:525:54b6:dac1 with SMTP id a18-20020a4ad5d2000000b0052554b6dac1mr1370023oot.1.1677879760575;
        Fri, 03 Mar 2023 13:42:40 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6808:30a9:b0:37f:a766:5f32 with SMTP id
 bl41-20020a05680830a900b0037fa7665f32ls1480566oib.5.-pod-prod-gmail; Fri, 03
 Mar 2023 13:42:39 -0800 (PST)
X-Received: by 2002:a05:6808:274a:b0:383:f91b:cf5 with SMTP id eh10-20020a056808274a00b00383f91b0cf5mr1344845oib.53.1677879759470;
        Fri, 03 Mar 2023 13:42:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1677879759; cv=none;
        d=google.com; s=arc-20160816;
        b=bdfGbl4tK7+jrM1cNXnN8MS23FCFavvu6v7W8GIY6iKjwJhwrEDYb1HF1T+cm0Xp7T
         nN5NXaoZhVDrrhg7yT+zHmtZm/ES45oQRUdXdcL/gadgKhnlAP5RpfGvPqgbL6BWPL4x
         cZzN834g4XNx6XFLZccUdql7CVWLsZ7wmf34Xpihtde6kb39fdIIu7pUWTZKu7SnWfU7
         WaSoIFHDTlNLM7PW6UwEn76hkmBCDb6W4Re7oP9xq/nkteDjyER9F7XYzNJ1vS2XCyTw
         jlSxBwdf7Ta/9fjI31gaWI6NvxVHTeLshTsJewZSTVrGsV+qJBvB8eVoUuFlLv34VEn6
         OHzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=pdC7iQ6KKjLNIpU2Qgi2WWNpPDMfjuoHY8oPdeH29Ns=;
        b=xPxK1V/qj7phMoDje+CTRlpg4pns/6CryKkH07df4RU7tko8mi4d2wUwcYlxHBGjUE
         tgR2ehO6qOcMwy0iOG/Ck4bL2MYvp3NygvHnOkmlXnv6MRVvDzmuEupbhG6ffhmBg/6u
         MHOVZTZqMYaSfqTKIQawqOFHt2p/Mq5RaZHOmGWd0+Fxz78SkOv0pH+fFXz/hQaX67+u
         G65VwYW2M7uQlYXCfSIAo64zL4yXzPutTlNYwf0WFqwz2MYWuxtrtytFvqR3VMUMN6bF
         B+D6ggDQC7uFaDZEicKL10zhUL+2cJGfoJmhb1wFrkdyeh610UBuKzo8Sa1ph2bxaw0I
         EcxQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=bdru84Hm;
       spf=pass (google.com: domain of sashal@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [139.178.84.217])
        by mx.google.com with ESMTPS id a13-20020a056808098d00b0037d80d62b42si2933880oic.195.2023.03.03.13.42.39
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2023 13:42:39 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 139.178.84.217 as permitted sender) client-ip=139.178.84.217;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 3E6C861720;
	Fri,  3 Mar 2023 21:42:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 53074C43446;
	Fri,  3 Mar 2023 21:42:38 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Alan Stern <stern@rowland.harvard.edu>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sasha Levin <sashal@kernel.org>,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] [PATCH AUTOSEL 6.2 44/64] USB: ene_usb6250: Allocate
 enough memory for full object
Date: Fri,  3 Mar 2023 16:40:46 -0500
Message-Id: <20230303214106.1446460-44-sashal@kernel.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230303214106.1446460-1-sashal@kernel.org>
References: <20230303214106.1446460-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=bdru84Hm;       spf=pass
 (google.com: domain of sashal@kernel.org designates 139.178.84.217 as
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20230303214106.1446460-44-sashal%40kernel.org.
