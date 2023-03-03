Return-Path: <usb-storage+bncBDTZTRGMXIFBBOOWRGQAMGQE6OJWOYI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wm1-x348.google.com (mail-wm1-x348.google.com [IPv6:2a00:1450:4864:20::348])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A8F06AA28C
	for <lists+usb-storage@lfdr.de>; Fri,  3 Mar 2023 22:48:42 +0100 (CET)
Received: by mail-wm1-x348.google.com with SMTP id e22-20020a05600c219600b003e000facbb1sf3404816wme.9
        for <lists+usb-storage@lfdr.de>; Fri, 03 Mar 2023 13:48:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1677880122; cv=pass;
        d=google.com; s=arc-20160816;
        b=DBAB2O8sDmeNfzXeRmj2mS9BVJ2r3D45E0AC8lVP/VCWQigQQD4xWxxj/nQyIzsAGp
         mCv75Sz81f8ooD4UVdVoO8Jv0RPwvLMLN0x+lvX1tbz3rUq12Wi+t/6ZmkgzcVpRLVSC
         y67zo0ZXmjuusbgp7lXiRGmmyXC7/HBkh35QTFPtwnf1AzoA4aiBwqV36dmdg2X+yf/6
         g8OQTr7Jq51sd/N+JGtx5Kb2PcOLXJoKSzomR2L6dtTgiRRIGTA8njM6IR6I0x08yuP/
         w88QmPRHplxcppNX7Okc4xin+1ZYF8Kgl+1NEyppd/VHAw0Ci2XEiP0IuPf9RiETPRNR
         cFmQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=paWKrF5PAbT4LmiWgwtBS9hIKZVgh9YIAwCLS7MLOM0=;
        b=00hNM49QWh22J70WgU/K9WR7hYiHUVZYFOXr2ha5Sm0Kr4aqxpQzlO3fVEqeOC1fM5
         SPaQnkxvhDkjdZg5UDYP4GzAXpsQVOpNcBENMxyUmN+0d3W/fO7zOLqgxw2i5TaBcaSj
         PnFVDKGL2KvKjAtZHt2uAJ2vdY7bYb+uHSwnqaW/d/3vCmxESgFDougtcuJ9xikSqM/8
         1BW1YL0j3cS6V8Ykse47u2uj7u98jZ2FjDgpDymG0CxGsFU7UK/xpWlKy3igADk9ysoh
         CJZmnT0aixCYcEtR2n6HoyheZRGWO1VS1/sFCIwzqpNXqxAAdqh2OGncy1uN+whBzmrZ
         lNzA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=VO9XExO3;
       spf=pass (google.com: domain of sashal@kernel.org designates 2604:1380:4601:e00::1 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=paWKrF5PAbT4LmiWgwtBS9hIKZVgh9YIAwCLS7MLOM0=;
        b=Zj5uXqWiqrcU/0dYVMJCuGFuunwLWqCEvDzf39TDns7fDjntgJaH0ZufBjVSYrjByH
         mKUqAhB9EA8gt9/TNx8wE7tnbJYvLz1j50/Ciyl9S812gB+xcQW715a4EdaBE3mY3UC5
         dhI0aXKpwIJWRbZhBvwM9N2FXwjvA4zE1hixQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=paWKrF5PAbT4LmiWgwtBS9hIKZVgh9YIAwCLS7MLOM0=;
        b=zwSWzmQUnVG45hcnjmUKVHNR+cPdsg0fEnik9V/n6zAFcRxDOOIesSYM9fHyoR4OQc
         DrCctLLxypDZLvFMiElaGkU6OGA/x3wb+k4q0s6Kfrqdc8yypa8hvLlzN84VaMG3R5Oo
         bRpvaLmvr+qTpl7ZoO8g3aj3pb1reN1eqguheyYGqKM27+ZTrulSmh2sWWWLPQiPCysX
         ytxI1QsoScDq5+l1mB5IoaamfNcRP9855h+yQA0r/se+PJ8HmBU3zt2QYtGd01OmeK4Q
         r5DupiFPL5C70C5aVrygggttG3AGNDqjpAkzEDvXC/T+slPv0HxFeH8hSQg9xjz1toYh
         0wpQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AO0yUKVIzCVpsMUZyaYJX9r/hpc+IEIoId8Jo/2IZZnH+yX0JDcMJD3m
	tXTPScTbDYnm/hYto2YbCdPaVw==
X-Google-Smtp-Source: AK7set+egdgpL0EKMhH//256s1ZVHL5ZznGU88Iwx/LfgwOQAtdwk26MqqBvr95d/bSvYkB4ar7HvQ==
X-Received: by 2002:a05:600c:41d1:b0:3e0:87d:959b with SMTP id t17-20020a05600c41d100b003e0087d959bmr715941wmh.7.1677880121733;
        Fri, 03 Mar 2023 13:48:41 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:600c:511d:b0:3e1:e754:51ac with SMTP id
 o29-20020a05600c511d00b003e1e75451acls2197700wms.1.-pod-control-gmail; Fri,
 03 Mar 2023 13:48:40 -0800 (PST)
X-Received: by 2002:a05:600c:4f93:b0:3ea:e4bb:340c with SMTP id n19-20020a05600c4f9300b003eae4bb340cmr2824296wmq.18.1677880120157;
        Fri, 03 Mar 2023 13:48:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1677880120; cv=none;
        d=google.com; s=arc-20160816;
        b=WFJ/YxOjwseeMfDm7tL0xvqIfPd8KZcjo447D4SC1A8kS3vA/6b6RYS0N7dNcRF/Qg
         6xXfMGPvxRqE0tPsGw7EXEg2Dnf5YC87RmKzT8ZFPMnA6JLKlkWxs7YXj+v9tPVPEDdA
         dglHWeVUqC0VjS/jiJkWXt4HFcUAZJdKd5g2BeCKoyZi689/n+vCOAnKRa03Fwm/Fmmt
         94go1b7vj1tfwkcMBXJ0uc9ePuEslZ2MYxptyMpRPOtPC9gB4E3rtu/mJLM/gLE5vsTt
         AhCxI80nNAyu9qVijwQT5ncETgirGAXBnmSmYVB0W51MANX3VwxYfg+V9t1a9J4cVLAP
         FBsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=hhDdp1+kKMsOYkADuVA2c2zTD9OR+COD4ywKdEldd3E=;
        b=x1vigLEHKRJHJpa/nc+Fgv5K+lIswPgHGHYjMik/saj7BzDHjNmP3sC263JSFKjXl3
         x7sFmj86FgV00KOqI3SxhYcftYMe2RZhrD/kMXN/lmbww5W2XeVAWcyz6T2w0vNhGEIj
         dlv2TsjQA8/LDVZOnL6aLgO4CPdEBuLfyxqHqJ58XCMGkOwk/KmJnHBg42tnFx1qT0lV
         yQpTCuwz+xOaTZjBAF7x8YP2Vr03UhiUwHbfYWqqoJ9v+sfB5S1EtBFpM/it7svTBiG/
         t7oM07W9SLTJ7zQlrXRh138j/yzAN1tYJQHlWmufRkZNA4Jyjd8Dzb0U0NlzcCMeOsXa
         L28w==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=VO9XExO3;
       spf=pass (google.com: domain of sashal@kernel.org designates 2604:1380:4601:e00::1 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from ams.source.kernel.org (ams.source.kernel.org. [2604:1380:4601:e00::1])
        by mx.google.com with ESMTPS id g12-20020adffc8c000000b002c5509bdc4fsi2381247wrr.621.2023.03.03.13.48.40
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2023 13:48:40 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 2604:1380:4601:e00::1 as permitted sender) client-ip=2604:1380:4601:e00::1;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id DAD17B81A50;
	Fri,  3 Mar 2023 21:48:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C4F04C4332A;
	Fri,  3 Mar 2023 21:48:38 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Alan Stern <stern@rowland.harvard.edu>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sasha Levin <sashal@kernel.org>,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] [PATCH AUTOSEL 5.4 16/20] USB: ene_usb6250: Allocate
 enough memory for full object
Date: Fri,  3 Mar 2023 16:48:02 -0500
Message-Id: <20230303214806.1453287-16-sashal@kernel.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230303214806.1453287-1-sashal@kernel.org>
References: <20230303214806.1453287-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=VO9XExO3;       spf=pass
 (google.com: domain of sashal@kernel.org designates 2604:1380:4601:e00::1 as
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
index 9c984f3c7248a..b076260a2ca49 100644
--- a/drivers/usb/storage/ene_ub6250.c
+++ b/drivers/usb/storage/ene_ub6250.c
@@ -938,7 +938,7 @@ static int ms_lib_process_bootblock(struct us_data *us, u16 PhyBlock, u8 *PageDa
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20230303214806.1453287-16-sashal%40kernel.org.
