Return-Path: <usb-storage+bncBDTZTRGMXIFBB65LVO2QMGQESIXB5RA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc46.google.com (mail-oo1-xc46.google.com [IPv6:2607:f8b0:4864:20::c46])
	by mail.lfdr.de (Postfix) with ESMTPS id 53F4F943B50
	for <lists+usb-storage@lfdr.de>; Thu,  1 Aug 2024 02:25:33 +0200 (CEST)
Received: by mail-oo1-xc46.google.com with SMTP id 006d021491bc7-5c44c86c4a8sf6589147eaf.0
        for <lists+usb-storage@lfdr.de>; Wed, 31 Jul 2024 17:25:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1722471932; cv=pass;
        d=google.com; s=arc-20160816;
        b=D3mmyw/gOheBp3INXjqORiGBBLwt693lwBuHbJu7Yx4bfPAy4wnAZKpLV0Wgc1TxGC
         nSmQLOlSCgOwnFihsBItT8cu4vj7gCDbCy3Oa1bygc79QoKytVzmmHgPmbQ9kWKykWSb
         L4n1qvo8aj0XlUdRZQ9DMEX04yyI6cwGCskh5Wd2ncXSzmiUG8Th/GPhI4RMZavbYFAi
         brRzCkrYWkeS3hvFeO7/y0WFqiI3uFclv+9Q02i8rhMZGf4zVq3hiP8GSrCrIP/ERF9A
         J6mUMG1c3/wmepKf6ycYxURvVLhSeogBqviz0fwgBotOANRwYsqGye+cHKXdkOXJWgck
         SLaQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=JeSZswHPFRgnMYGgv1GXeSRTAkQzkgWlgykqO0nsKEI=;
        fh=ldqEavLSeM9yyQlzZYqLri4h7fdcrLIfFWDyZQAYZ6o=;
        b=CdN7KrzVCocRB1xM5PPAMsqoQHT8RnwV/II1e5ptRoE1zKDIwTrrPjjPiF2XdnqrPS
         BrMNog5sTRl14OLo1UQFyqlZv95YbeBW0T3gF3SS8hOQ+innnTqywJ6lnWNVZY6YHZdf
         txkI8shkeO1ljbE77nf3vkqOTyYmG0niCa26Xg/rDqiBgT5dUksBAN3W1w40MMzyNCsx
         StBH6FW2887mpTKpXWaLd0BupORY8tyzMM1ls47pU6W3xssaIZM2YGvW1b7ru2ggDBVN
         bvkuXtdGDVqEc0YrIxtyOdx/HKK1Wa9LIFGkELQZwO2WPjPWaZz/XXfSkXpW+Md/QT+e
         Yo+A==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=NV1Wj4CQ;
       spf=pass (google.com: domain of sashal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1722471932; x=1723076732; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JeSZswHPFRgnMYGgv1GXeSRTAkQzkgWlgykqO0nsKEI=;
        b=guJ+9X64FkfxisMP7ipKYzHrOicpmG9wZCof9LBZA3e92shCB7Dt/AhEQLw02y/IQy
         vVCK10cVeBrS3GpZ2oaJLANtnsQznG6W85iTeRKnrKQf+r9Ptjxs2XZH660VOXHzL+Nt
         hI0dFEbIPmcRtfxbtLLqpLS1gF1187dhDyt6Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722471932; x=1723076732;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JeSZswHPFRgnMYGgv1GXeSRTAkQzkgWlgykqO0nsKEI=;
        b=GEuuPUh/BjrifPfdBnZLiCXoDGRNGfmFxC5CH9tZA1bCv3lh0rnWV5D/BnbhsUcrIl
         czzn8yBsWcsmDcautoN/TwnsOjsA2+egWvttUYHcLT2iqHDAJEyk5jh5xGqP5pdHiCqP
         jotRnH+UVZgRTF5YDbtXHGvVx+ZFHWAXrDu2Jf19Z9hpUiN8l3uyitN2WZBltc0d3EiW
         eAuCGKSq6pSskUOgrkd9rtymBJYCO/CQMEqH0kMRc6zMOW8+J0RlPqyU3KtunvUksdJ2
         7JNcg+hYLBnnDp45aNrXIMZTSvnJX6q6eiPAv8/q0q6dTSm/0g0SsMzAsmIKKvV8qcTN
         hcWQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUsWvE/IZbm13dbsajjR/cDTtEAg6/Urc0N7+BlPDMgCC5YFh/Xf8oCLde1et8pXO8kzYpt95J5k9HC0q57CoZxztGdm2ysOl10
X-Gm-Message-State: AOJu0YxES7qQgE5e1xmLHzywG7PcebFnDug4OKX3s0bREEAJlhOIZnGy
	m0efxdtIYtj+uivNsFMT2u1hu2/7k+aPAwgBG+iAFGGReXLDLeKkjGZLD+btsrs=
X-Google-Smtp-Source: AGHT+IGYUDDw1Kb49o2q4ZUay5SXkseUP+GVihhPWlap5NJvydJ9CK2/oySGxmCFy0dNf07CbExUwA==
X-Received: by 2002:a4a:ee97:0:b0:5d5:dca7:b6d5 with SMTP id 006d021491bc7-5d61eb36611mr1025363eaf.8.1722471931962;
        Wed, 31 Jul 2024 17:25:31 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a4a:1a87:0:b0:5d6:3ef:fd2 with SMTP id 006d021491bc7-5d603ef1004ls2309837eaf.1.-pod-prod-02-us;
 Wed, 31 Jul 2024 17:25:31 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVyCAAzw1W/tSsd7y4t3mwj2D4pjLOy3BF71anLj/rpFqQk5HDq/5B51tudu6lCnDRclCPylk5SlMwYfkOAtwxcF6m1bfj6/DKOXA7xpZg/b5gfxB4=
X-Received: by 2002:a05:6830:651c:b0:709:3462:a4b6 with SMTP id 46e09a7af769-7096b7dd88cmr770500a34.9.1722471931018;
        Wed, 31 Jul 2024 17:25:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1722471931; cv=none;
        d=google.com; s=arc-20160816;
        b=pjwHHVBbc1+K8lu2GIYcGTe7wVRo27RD22iKd/bcbNBNP7Wvy/YQMYxG3EyA+qQGGK
         WzTTp7mbiL8DcmD8sAP7TbNpL4oblsvPT/7hIzqIVzHMj4KGbA46W+iLc2OTY//QCmh2
         s3fjPo6GyXJkbfp0kSeveRNBmYc0+ervepmKyBRQsDBI29Po2muqfDdy7AR3U26c8zDC
         Nk2EWcBC2s5ejUoKyc63du33YoB43M8utipC5RQnS2MonbjesG4iCIi1/TBjC8Rv3Dl0
         lIvuhi9m9andYgliGAXfFqx/HYXL2foD1vGOJ2bw0adntnI6LicP7B5Km9KcnZskoCYg
         IgVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=TgEvK4kRQoUhrlOcEPKA6PdE9qTNvJVfH3HicxW2MRA=;
        fh=jgkb7am38yPjzZXkQAVozurBPG6OhskQIcxQ3YzqA1w=;
        b=ibLMQcnKDg3KVMS3ihBD/GQ6T8w7+OXVGYURvDFqnJRBbCzlH8jW//38jhEdl03jWs
         DWKPfVvo//FULE22Tsqtw7Y8/6tug/TWVkdWKzsHfMMTAIPF+b9OUp84BgXQ49Ud85kS
         NdqWveRZP/e6zEubGO3VtHQO/s+JkL7MfiBIX0CUysd7VIv3psJqypKSdxL+XS6p3LO6
         8ZOjO+trFJYB5C/aWB4BMdg41VCY7cFsta9lpDkrbTozyupLb1pyfijXPfsaWs2yZ17q
         LXD/cONPyvNlR6BxpX2FpbAMvQy5z8JpLkHZNXLBI8WBGctCCWnRSmJKeHdvZ8Ji82W8
         HXmA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=NV1Wj4CQ;
       spf=pass (google.com: domain of sashal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by mx.google.com with ESMTPS id 46e09a7af769-7095ad6f96asi2703753a34.58.2024.07.31.17.25.30
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Jul 2024 17:25:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id D1D266125E;
	Thu,  1 Aug 2024 00:25:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 53498C4AF0C;
	Thu,  1 Aug 2024 00:25:29 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Shantanu Goel <sgoel01@yahoo.com>,
	Oliver Neukum <oneukum@suse.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sasha Levin <sashal@kernel.org>,
	stern@rowland.harvard.edu,
	linux-usb@vger.kernel.org,
	linux-scsi@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] [PATCH AUTOSEL 6.6 66/83] usb: uas: set host status
 byte on data completion error
Date: Wed, 31 Jul 2024 20:18:21 -0400
Message-ID: <20240801002107.3934037-66-sashal@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240801002107.3934037-1-sashal@kernel.org>
References: <20240801002107.3934037-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.6.43
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=NV1Wj4CQ;       spf=pass
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

From: Shantanu Goel <sgoel01@yahoo.com>

[ Upstream commit 9d32685a251a754f1823d287df233716aa23bcb9 ]

Set the host status byte when a data completion error is encountered
otherwise the upper layer may end up using the invalid zero'ed data.
The following output was observed from scsi/sd.c prior to this fix.

[   11.872824] sd 0:0:0:1: [sdf] tag#9 data cmplt err -75 uas-tag 1 inflight:
[   11.872826] sd 0:0:0:1: [sdf] tag#9 CDB: Read capacity(16) 9e 10 00 00 00 00 00 00 00 00 00 00 00 20 00 00
[   11.872830] sd 0:0:0:1: [sdf] Sector size 0 reported, assuming 512.

Signed-off-by: Shantanu Goel <sgoel01@yahoo.com>
Acked-by: Oliver Neukum <oneukum@suse.com>
Link: https://lore.kernel.org/r/87msnx4ec6.fsf@yahoo.com
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/usb/storage/uas.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/usb/storage/uas.c b/drivers/usb/storage/uas.c
index 451d9569163a7..f794cb39cc313 100644
--- a/drivers/usb/storage/uas.c
+++ b/drivers/usb/storage/uas.c
@@ -422,6 +422,7 @@ static void uas_data_cmplt(struct urb *urb)
 			uas_log_cmd_state(cmnd, "data cmplt err", status);
 		/* error: no data transfered */
 		scsi_set_resid(cmnd, sdb->length);
+		set_host_byte(cmnd, DID_ERROR);
 	} else {
 		scsi_set_resid(cmnd, sdb->length - urb->actual_length);
 	}
-- 
2.43.0

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240801002107.3934037-66-sashal%40kernel.org.
