Return-Path: <usb-storage+bncBDTZTRGMXIFBB26WRGQAMGQEROPWUYY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oi1-x248.google.com (mail-oi1-x248.google.com [IPv6:2607:f8b0:4864:20::248])
	by mail.lfdr.de (Postfix) with ESMTPS id 982046AA2AA
	for <lists+usb-storage@lfdr.de>; Fri,  3 Mar 2023 22:49:32 +0100 (CET)
Received: by mail-oi1-x248.google.com with SMTP id 3-20020aca1003000000b003845588afd5sf1713148oiq.10
        for <lists+usb-storage@lfdr.de>; Fri, 03 Mar 2023 13:49:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1677880171; cv=pass;
        d=google.com; s=arc-20160816;
        b=NJoKhT63n9ny4XzJjZCPWek9WlfmXH2oLpUZuJtv7iqhA4fkggHPzYB3C/Qgb/Zbuj
         9oS0kBzfMoupc7/3JsPG3bG2VyOWp8AoSoXlld/PG5FpznQM0Xyytn7XNW2B1tQomhEh
         HeDDNX6KjeQD2raQcZI/wB7h7a8X/ApBk/BGVySkiAWaH32nsPJ1qmXMvgx8vWqFa+/r
         SW+iBqkEr6QhhTLhSohbqB3BIXndMNsYYae80u/4IraOT7ItGHZG7IeoqqY0ocSRl/ne
         FZ7wJ+czwlwVBdkGoljb3NZ0sjX+lFJNWZ+VLrR/3UR1aWiy24TiYNkjA4Vxk1BO+s6p
         N/5Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=+61whG0erj6n3/lLNnwdT1rwLYlUuaTMc29KVuGmpG8=;
        b=HcY29tAQCb4ad4/YU/irMoumvMc+IwCxjNL6NN6ULz54I3tdeYEBRw3OCkNkSehfXH
         KqoD2PaehltLHXv4ZBuwCD6v1CdZISu/v//5OFK73YGNbKyStfqcz2DrsV12Tk0jAfoY
         nMuaXEyHQOHRFojSg+3VLEdYkXJGxs/QgApmtVM1mC5jS8+PZSVdF46LcdHX7ajnZhi9
         gloYcirp3bcv2OxuNR96D5WAQvBGvyBuMdNCHrfHA2AwOh0E3G6QxkbWwYgWcqQxaCPv
         xgMY8OT7f/vjANWNVNleX2WE4i3dgm037l8gSgoPGkkYrE/9hvpHPBQtxgds4hWixYCg
         cqlg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="lpgAL5o/";
       spf=pass (google.com: domain of sashal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+61whG0erj6n3/lLNnwdT1rwLYlUuaTMc29KVuGmpG8=;
        b=VsGR+rHsxFnZIQf0Jc6uzJBS9LGtaAliqSeD0H4Esrr/2g9XYxv0QALOznLRfL9VIc
         VjTGgW2Sd/vsR8fPHzwP7PUEBLRDbz0nfzR/lKwTRx3K+oOKbbiLd/QgUIoimTuscIC0
         1bBp/RwFXDuxeuy2wFtGs8UgFZKCIP/aA0ycI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+61whG0erj6n3/lLNnwdT1rwLYlUuaTMc29KVuGmpG8=;
        b=LdXxecKFXfYb2XCXTwQixq1aUnI/ypFTI6iGCjj46SKz79unHvxlb5N4vUZXLph3sW
         drXgEj5NQY0FdLG54mN4nb1M91esJeoRSNoEIY+3//+81svxluE7xqDg4b+2rvZkyIbS
         /E7pztqJbTwqhLyV4lQm/P4iQ0pMkIMLBqg0KLlQnncwfBysETYmYr1Ft1zRp9dvp+pX
         19lbzHMW33zHTUX73x9WdcXQMIKSdbR92+QR5SewqHDmzYUiIMilslmdIbX51ELPrkMo
         zRE5QUD8Rhp4Ujg65DjWJqn0sh90M9VYESW/72ZjYRqxcDWcse6eHLHLooiJjXVzGtvx
         YLdg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AO0yUKU9Q2fyH4qXD04V6s9v+2VVDSMwNR3Ys+x0jguYNtEberF0YTMO
	CzV0qKruIxMq0InO74RbUUsMlA==
X-Google-Smtp-Source: AK7set/o+WLnC2ChXDSEDeAZReWBLa+9355u3muzo42uLHlGMN/BJE/rGEwFw/AP1DYWbc1kLkjEWw==
X-Received: by 2002:a4a:6c1d:0:b0:525:2b11:9632 with SMTP id q29-20020a4a6c1d000000b005252b119632mr1211906ooc.1.1677880171331;
        Fri, 03 Mar 2023 13:49:31 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6808:1482:b0:384:8df4:c738 with SMTP id
 e2-20020a056808148200b003848df4c738ls1446707oiw.0.-pod-prod-gmail; Fri, 03
 Mar 2023 13:49:30 -0800 (PST)
X-Received: by 2002:aca:1719:0:b0:37f:abf1:f143 with SMTP id j25-20020aca1719000000b0037fabf1f143mr1325175oii.24.1677880170651;
        Fri, 03 Mar 2023 13:49:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1677880170; cv=none;
        d=google.com; s=arc-20160816;
        b=kB/Njz4wcXQLXofPpniRZqqBrFYFIknwNFOB2fayLUw4DOCVFo9Ude41w2dqJ/uL8i
         gH+DBi//KBeVo/JfVEsKa9mc2ojFm8QhQnAlS/iAHVSiF8gIxnS15UA66a8BN5LPVfb1
         cYp2V+EfFz4AYhF1q77RFOqE5d73mW/ZcxW+Z+gKYttx19A4B1G0HBiPnoaHoQXsWmxk
         HGHoFIeRWAGrZMdLuX330XrS7tKobnNyysSU/gj6d4tVhOUCnaZz2XX218+ZVaMR0Inj
         EuYfmeu5VppUCvQ1v+raFcfMUa4wbtWrFXD9A3M3b5ZoyiQeLAaq4NIcp7MahazCi0d8
         byxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=cp1hae22BN+xvRFH7ysSKS6Gn2bhr4vq38+H2/1cpoE=;
        b=iwtIUiluF76pe7LLM2q6Iv120HfdUdZiUFEalAuFvmoZqzxxZW+c9e+cXPsCk6ZlNf
         JSW43oHFmjRPkCh9AOefjeYs7dipEi5oWZ5eWD0bLEb1jOdMnW8yYIFd9ZG1yxsr63PR
         UEp3XyZfsNlk5afRYwmpXA9nkPK/5dn8n2pPQzjx8vM3Z86tfLtbQUXe3ZS+nBEml4FI
         zwnON6OjVBH3CpDbd+a7sPBy18+kELNL0aF2gQbiYWEcZk1fLkrZ5VQGSbTusTQGaBGr
         cxT5YrxGllmoZdirP1Dm4nCCgytnVYBXvkBdXZKu5GZ2nSSGtyouhNnQxpZ/xqSDl7M8
         jj/A==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="lpgAL5o/";
       spf=pass (google.com: domain of sashal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by mx.google.com with ESMTPS id fb21-20020a0568083a9500b0037eaa9f5f30si2911737oib.196.2023.03.03.13.49.30
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2023 13:49:30 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 5BC686194F;
	Fri,  3 Mar 2023 21:49:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EF079C433D2;
	Fri,  3 Mar 2023 21:49:28 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Alan Stern <stern@rowland.harvard.edu>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sasha Levin <sashal@kernel.org>,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] [PATCH AUTOSEL 4.19 14/16] USB: ene_usb6250: Allocate
 enough memory for full object
Date: Fri,  3 Mar 2023 16:48:47 -0500
Message-Id: <20230303214849.1454002-14-sashal@kernel.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230303214849.1454002-1-sashal@kernel.org>
References: <20230303214849.1454002-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="lpgAL5o/";       spf=pass
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
index 54679679c825d..16b63f2cd661e 100644
--- a/drivers/usb/storage/ene_ub6250.c
+++ b/drivers/usb/storage/ene_ub6250.c
@@ -937,7 +937,7 @@ static int ms_lib_process_bootblock(struct us_data *us, u16 PhyBlock, u8 *PageDa
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20230303214849.1454002-14-sashal%40kernel.org.
