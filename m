Return-Path: <usb-storage+bncBDTZTRGMXIFBBSWURGQAMGQE2SOIKTA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oi1-x247.google.com (mail-oi1-x247.google.com [IPv6:2607:f8b0:4864:20::247])
	by mail.lfdr.de (Postfix) with ESMTPS id B06D16AA1EB
	for <lists+usb-storage@lfdr.de>; Fri,  3 Mar 2023 22:44:44 +0100 (CET)
Received: by mail-oi1-x247.google.com with SMTP id z18-20020a056808049200b00383b7de8124sf1714749oid.18
        for <lists+usb-storage@lfdr.de>; Fri, 03 Mar 2023 13:44:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1677879883; cv=pass;
        d=google.com; s=arc-20160816;
        b=DlRSZg43HnKNrjFfPTrwWsMRUsndtVe8wLYwfX8rYONmEfwnnDOSqNNdTLXJgmvUjn
         Nm1ao1iT6A7knuW7mKk4a5SM+Vng0yCaeHgnQSiZVc/YafQdrpoRzaBBVMVHIZKYyX4S
         xfPQrbEuy/IzBMkuPopoS50BvphNds9KQdQDfIhdgHJocZNh9e539xhbhJ2LfCKYsFkw
         Km163k5HPzVnrbO8OYYxbC/XdWJYiSPDMWoJJMTHz6ag9gvCkklWNKF4tTci9/Q2FZar
         12zNDFY57bbmGy3evIwUC7YwJ6gIf528eN6HxY/ArIw5YXUxsLvpd5zfhfNc5trQpYqz
         p+Ww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=5+2mLTrryeQN7I0+C203rHgLATDj+LisKeJ3l4cUtCk=;
        b=BpLvZzii0NvArIaez68/G2uNHucKI/um5AYAFBlp6KyHleoAZb3u+EKc+vqHYnw+9Z
         s0qqG0MtwtMlyP0p/ihMOip2h8YgLIJlUz7uX63jE2BFtCeIMt3CVRHbwZa5oHcMIAI3
         ZAd8QJNVaSZaSYaZbNlnJ1CWFQ0yWVdkvUvyeKtncRlvRXoB92CCJjJ6XM3FgOzLo16D
         XjsZfIj3jJrPJ8M/d2CjbT6qm/+XSHXbEb7Ng5XYx9I6eDirBKoJ64F8XdSIPnmktlQD
         dvmMR6TfFGWpVOYwYc1E0RfCiFheH93an4lYGJxucWQXKVxT4uOHeOTNoTMj9uyJwEes
         zv3w==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=irB0G8mB;
       spf=pass (google.com: domain of sashal@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5+2mLTrryeQN7I0+C203rHgLATDj+LisKeJ3l4cUtCk=;
        b=eOWootPDKpva5AIdbkuvdzMVQYhui2DU4/by8eO+cep+76IN3j1rKU48aDSEy72sZV
         gQXozsVf9N3t1sF607uqNtTvsoJEobU40fXJj6DulKhdcl+ecVodFBcGk8BH0xne7Mc3
         kXugshB94ELxLz78TtNuX7SM6Ai5ORe3I+nYg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5+2mLTrryeQN7I0+C203rHgLATDj+LisKeJ3l4cUtCk=;
        b=pKnnitIHyO045P6yco5Z0K+UFrh0lI4GlG1dGtgQ5n/jSIakXhQ6OhNMF+NYDzKRY4
         WrEI9xqWscspqceBa7rwLtJom3R1e5GgOsjqOD9UNP9OuX2PY0UWTq9tAIXFpslSDW33
         MT3Pl96FXSWqoO4dV1HZp3puUaeKUtxZ6AiPX7doz8gsYftj4mfZ6ol+5A0UnvXSeOwP
         IhhRoB97cO1oU1Hh5/Pgk7RhFmGO562BXKxgFe0VVtWc9y7YDcseP5LZC0GgbnsDmB9K
         i0cchdUuaVB3HON2U8gnSkeXML6nNf47QlnUKEqR5FFcEy6H8fKoRq+7cUmzu0R1PmJa
         L4XA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AO0yUKUiAKpXJ5CyDZjNX0BrrZFOhHSfQr7JubJsa5J9YX0H+FpZ3k0X
	O15syG9J4aaf/F4Os6EffOtJxw==
X-Google-Smtp-Source: AK7set9+l47KUCqRRoUIDIhtjRVCuDEXsBQb8ApmgWDOf7wnU/WHEiKeo74Nl1FKcV8p7Eo69gqWFg==
X-Received: by 2002:aca:650b:0:b0:384:3e58:672a with SMTP id m11-20020aca650b000000b003843e58672amr1055866oim.10.1677879882996;
        Fri, 03 Mar 2023 13:44:42 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6830:148e:b0:693:d403:56ed with SMTP id
 s14-20020a056830148e00b00693d40356edls926950otq.6.-pod-prod-gmail; Fri, 03
 Mar 2023 13:44:42 -0800 (PST)
X-Received: by 2002:a9d:62d:0:b0:68b:bbe2:fa4d with SMTP id 42-20020a9d062d000000b0068bbbe2fa4dmr1189697otn.18.1677879882360;
        Fri, 03 Mar 2023 13:44:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1677879882; cv=none;
        d=google.com; s=arc-20160816;
        b=d8eDW/w26ZB0XHEt1ysVimApN3hoxjRoakUnO3QZqwtNyT86k78Q3kUWLqsYHELVMA
         elG60jNQUVF1rQwir195GCckNGhziWNQ/MULtAcVZUGDsq+dXyPbjXhZMgpw0AEqwRaf
         n8Zdx5yPZnI/pIhDKWMC32FMr2xIKFuAIqB8uujLn0jbRCZK55pext1r3WguOZCA2WBj
         vLjohxad5mq+7/ZXo3Rv/fy2PpwGN5Z+U9zEHjuDeX6bJb28JLyf1yorVhmD8vFEmFni
         5GHll/YG2ufYs7IIvlL6Ac+I8kk2UjoSb2NM+vY8JjEpCLhbUVTEF8Nwnhjxv+AA/mE+
         NM9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=pdC7iQ6KKjLNIpU2Qgi2WWNpPDMfjuoHY8oPdeH29Ns=;
        b=wXjL/TzfkxKWB6u8ss61nMrsTINeyfhB9jj9OwtP0GEW9EQJ2EauJp4CF1c3vzCFEb
         olGet8Ol+0GZc7herATPjHb4Opu/9425pmey0fdDJAtfuo23KBrlEe2++a6v+Cp+ckHX
         kxdS+Ulz0KiTWk2JRryYaJ1UmYyc+bulJdreJIVuQV9lthX8igYukTwyje2fRI+ejlwm
         kC/qS3BahP5N2NN09w47LvScqGMI+/fyqWLlc8j8mbIPWI9e2+eIZhF322zBky2SSbp+
         rIuqbivGdEhzsGo1kG+3YXObt5lZOSTKcUex2LLE/zmhCU8U+yX9Ha44Nh2SZJSC4EEQ
         db9A==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=irB0G8mB;
       spf=pass (google.com: domain of sashal@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [139.178.84.217])
        by mx.google.com with ESMTPS id n16-20020a9d6f10000000b0068b9be40e8fsi3554450otq.67.2023.03.03.13.44.42
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2023 13:44:42 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 139.178.84.217 as permitted sender) client-ip=139.178.84.217;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 3141361912;
	Fri,  3 Mar 2023 21:44:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 43159C4339C;
	Fri,  3 Mar 2023 21:44:41 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Alan Stern <stern@rowland.harvard.edu>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sasha Levin <sashal@kernel.org>,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] [PATCH AUTOSEL 6.1 40/60] USB: ene_usb6250: Allocate
 enough memory for full object
Date: Fri,  3 Mar 2023 16:42:54 -0500
Message-Id: <20230303214315.1447666-40-sashal@kernel.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230303214315.1447666-1-sashal@kernel.org>
References: <20230303214315.1447666-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=irB0G8mB;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20230303214315.1447666-40-sashal%40kernel.org.
