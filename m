Return-Path: <usb-storage+bncBDTZTRGMXIFBBBOWRGQAMGQEQ3ADDTA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wm1-x348.google.com (mail-wm1-x348.google.com [IPv6:2a00:1450:4864:20::348])
	by mail.lfdr.de (Postfix) with ESMTPS id AC47C6AA251
	for <lists+usb-storage@lfdr.de>; Fri,  3 Mar 2023 22:47:49 +0100 (CET)
Received: by mail-wm1-x348.google.com with SMTP id e17-20020a05600c219100b003e21fa60ec1sf1581515wme.2
        for <lists+usb-storage@lfdr.de>; Fri, 03 Mar 2023 13:47:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1677880069; cv=pass;
        d=google.com; s=arc-20160816;
        b=z0UFdO8jVYkRmUVNUtLfHINndCaFoymxt136yCkxxT6XUOee6MmvJBRxEah319G2tw
         cfcCYliLYilcQ5YqpMuOGjbwddTLaQy2bmj39qxzlugGPTIhzp+FyzQ3fuwJLsrrEP3a
         Kwidmiz+Jkjz21whHP2FnbW274SApEpz4QN+stcq4T9DtnuDTF6D85mZB4eXyUqgNsrW
         onElMe0TPxOHb1rCdGsnEu2MsV0/k4YYS9ahTzofzK37RBTRaWIE66H7CAyoDLInD+9J
         25r1GSYjCsC8HMJ8cubZGyCBVEjAMwmLXlrO6sWGCqMXR9gk64NHJC9zUze11wDkSrGd
         2wug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=wj/ysYOBo4kH/BhraRftsIMLpCWS39ziyhoI6DuRDuI=;
        b=WIM7kHDWc3xlTktFrAp9uA4l8bu/yBSi7yvJKTuaLGD9nd+bIe5niG9jVXldy5tW/V
         59G2Vd5BJTYYq2KICrlWj7kJ6El1sJeWnPcpHWG+l8Vo/8RD6cUgVC9+GXO8MRl5J1Qn
         JoMjb/zeWHgMuIjt0r0rPsL2oTymF8oELAckAz/2wMqisoqU2x4iA/cUluC8gcgJ2xBE
         FY0lPR9USOM2EdSFi2DDPFKc+8Dro050bkxxpL33+bi8ixgXD+5wPFpUCxUXePID/g1/
         Sqf+1Z9JENEqR6O8NsBqKofpNdJtEloXftIWedGBm00aJwSdKqpKMGfziJ1yTeFa2cIk
         8dXA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Rl6sAkwu;
       spf=pass (google.com: domain of sashal@kernel.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wj/ysYOBo4kH/BhraRftsIMLpCWS39ziyhoI6DuRDuI=;
        b=LYMTo3zc5U5BnwKI2qNfDXwLjuFkGtN4WqCdfUN9zZ//4BERtCl2X9iGeedgI0/yEN
         wIoYsmqtTjcN3VRreceB56/xgiZe12UZosBX72Vta7OORQh6yLYJJqnd9e4By6LTgIRR
         nKXvcZ08blKf6psLjKOAk5ea2S4TCHlA5AnIE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wj/ysYOBo4kH/BhraRftsIMLpCWS39ziyhoI6DuRDuI=;
        b=YqQG5Qchi9ejgBK9vIIVi4F+Ot61cDN7l/uy8PCTLdJ0+WRCmhqIDG4vro32eYuYQa
         vUCzvKo5P+HcNtQERpdpR7FwtruN5DWe14uJ1MFs0ir5qzFaX6q757M11Va0rrpe859V
         hWNr9Ghg2otHE/yn8t+xKyWbBRYW4hRfgfh6WawJhsvHZhZd2pnnsI8nilFQOJbBBkYg
         jRLX+nS1FxzV/hLqCRtn0kCOacwS5Y5eK8PR1Ip21P8qt+zC4TZPsT0MF6nSfRCzEiwQ
         dTHwLGtVqiUCiXzU7QYkNf5+areerPVRGD7C2n7cg3pnM/vzJ8OjfJg2vak4DuWQxSXz
         jFcQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AO0yUKWLWEiQhm/Go2cT8TOsxdZ6u1biboSqeuqK5pFVKqJft/xbZ+mo
	kd4XjY/ImcRe0EKA7RC+UTk8FA==
X-Google-Smtp-Source: AK7set94nreJ/J/znL0RQVDv5S94QZows11RvqoMgQCex93ITydaYBB6Gr9P9/Eat6ydHCXbURsl/A==
X-Received: by 2002:a05:600c:a383:b0:3eb:6879:db73 with SMTP id hn3-20020a05600ca38300b003eb6879db73mr793844wmb.1.1677880069340;
        Fri, 03 Mar 2023 13:47:49 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6000:1788:b0:2c5:5262:2e24 with SMTP id
 e8-20020a056000178800b002c552622e24ls5883284wrg.2.-pod-prod-gmail; Fri, 03
 Mar 2023 13:47:47 -0800 (PST)
X-Received: by 2002:a5d:4b0d:0:b0:2cb:c370:77f9 with SMTP id v13-20020a5d4b0d000000b002cbc37077f9mr2514520wrq.9.1677880067841;
        Fri, 03 Mar 2023 13:47:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1677880067; cv=none;
        d=google.com; s=arc-20160816;
        b=ocbSPuOjKLMjMt80XBjsnKfsM2z2hPD9dzZLRnOjYFQFLHRT4uB+mf6kGVwryNERMs
         b3aj8+BNaSqv9Xv4IWzfrBlfeAwZxI3xZNRD0cnR0qYyO1QNbPggP+JEWRxe8KVr9LcY
         d0au7iikZl4jLLcnFr9KFfDjgtRDQWlWl1cGiU+SAXhTMaCDJS8KRTBPNJC1L5F3YhhY
         IZByGutNNePSEK+aHN36GeAng2+qhPYm0zOhxe0Tq4ghogPm9lS6SC7gs+vymhhtvFR/
         yBEQuUvSD/pyadaxGq0TVYD/eu4ffhwbF7fOxfT2iPFKxjZ9Ow51PSMhNyFfIijCs19B
         xvvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=0ybq9uIdm38OQ9GvZGkJIp80Ut/gRFoPquFhEpmNfHo=;
        b=NytWps6Hyu5zIGJ2q25CbG5VkNPiVrnKq5nmIkgrXXOesyz3hp6cVnlukIO82j6hIG
         DEkYOtaSJmXeIrZmJbmLrx4nNoHAl7FnZgk+USoZJLS9Ed1Q7+GbjKgM0TXBO9G0k+Si
         DCS56G/4GVa01OfcBvLf4Pj6oxFydQ047geXuyf564Jng7jh3ju0fTeUMxDoI4w5Ol8k
         8MavIMEgNpqBCoqK+8+pejQkvmj6XM2Dr0bROxXZu6R7xc9qN4YqDu0uITUafDwoz9Ne
         GtQRsbSkxvzQUDY6zoJ/FKIic6+gCpHgJsWptx1DZnVNCxqMJLlPWPXtKWRWkzdVo4Ra
         1mIg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Rl6sAkwu;
       spf=pass (google.com: domain of sashal@kernel.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from ams.source.kernel.org (ams.source.kernel.org. [145.40.68.75])
        by mx.google.com with ESMTPS id i16-20020adffc10000000b002c57919d40fsi2378408wrr.433.2023.03.03.13.47.47
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2023 13:47:47 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 145.40.68.75 as permitted sender) client-ip=145.40.68.75;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 63718B81A38;
	Fri,  3 Mar 2023 21:47:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 39E98C4339C;
	Fri,  3 Mar 2023 21:47:46 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Alan Stern <stern@rowland.harvard.edu>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sasha Levin <sashal@kernel.org>,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] [PATCH AUTOSEL 5.10 19/30] USB: ene_usb6250: Allocate
 enough memory for full object
Date: Fri,  3 Mar 2023 16:47:04 -0500
Message-Id: <20230303214715.1452256-19-sashal@kernel.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230303214715.1452256-1-sashal@kernel.org>
References: <20230303214715.1452256-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=Rl6sAkwu;       spf=pass
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
index c9ce1c25c80cc..737398f1b896a 100644
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20230303214715.1452256-19-sashal%40kernel.org.
