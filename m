Return-Path: <usb-storage+bncBAABBYFF4D6QKGQEUJDD5MI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ot1-x346.google.com (mail-ot1-x346.google.com [IPv6:2607:f8b0:4864:20::346])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AC5D2BB4BB
	for <lists+usb-storage@lfdr.de>; Fri, 20 Nov 2020 20:02:58 +0100 (CET)
Received: by mail-ot1-x346.google.com with SMTP id 23sf4509178otv.13
        for <lists+usb-storage@lfdr.de>; Fri, 20 Nov 2020 11:02:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605898977; cv=pass;
        d=google.com; s=arc-20160816;
        b=lNynE3ysbncE8uXnsoFfo2SjM6xwkNUaT+FjadK2NA6KNRrapiqAvOwHBvO4kdPkma
         0hOifTQHfpGKbCk8iTAiV7QbhaAVUucjOFo1tiZF1Z7Pu75erxud/3Te1hK5bt/8tjye
         J2riPRJRmOl/wPblKa4Nwd6pqeWkPzwnN7ujr5xir3Ww4fnrYYLxbLTK2nYjtAxBg5pA
         69LNXeQiojjKvQmoa1QjkJ4XwYZ2tyt3/h8Tlbe5mWqWD1k0ZyrmQye2EJLBOIYs5YLw
         3FOvo+kH350Qx711zVEZ+yxoQ8g9/oZlH5tZvz6a0gDPcFjm+c852SQifEwaUxXXZWdA
         wU3g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=asIae6SVkdQXpW52gejWiS4FvxMpOlMczH6KKEhhjPY=;
        b=rMXzTvsZr1usr908/gO7tGcj6CpgXSxt/bhS094EytzKjE3B3cNTCAQOBo8i98h/+2
         Btpseid0C62irnjtT+dgxDKekyyvwGQxvaBRbChwByl7BJ3px1g1D/+Vw7Wr9zvvzTt0
         tx8cjWZZrtxBvP5ckHJOmvRIxPByO3VJR9bHpFqgFSLVt3GFH843ESqHRCct+Vxe3Qsp
         F3VXOvJ18wkLIfdS/sCCkyJ5lBHmLRO6byASTUKzEo07UP4ruVZngRBKVLEEthwQrcuP
         aNdBuKFW+2a0TdUrU34rSUjh0TRnNkJewjwjk6EXGSfKdoLePfEhc+CHaoDZ/m34KkTK
         KUyw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Jy2staIP;
       spf=pass (google.com: domain of gustavoars@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gustavoars@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=asIae6SVkdQXpW52gejWiS4FvxMpOlMczH6KKEhhjPY=;
        b=aEfVoCO8zIt8/tdO9JPHZLuccNnK6V88s7oyCxqXxLl66dQzXMlaQLZKCRTPNlDuQ1
         008YRi55nQyC99F6pNtXGtF+iFGQ0QfbqaHMqTJFcAezftqBcuvYr937NtrJ1+mC1WCI
         i8toxUkBx7/tFntt/dvQY+Kryz4CVX1Kis+AU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=asIae6SVkdQXpW52gejWiS4FvxMpOlMczH6KKEhhjPY=;
        b=t2pLrhifcKLua3fUaqC4j8Gi+v0bUfo2V1kPz6Nvxeebzj0KpkUey3RRkmBaj6A9Lc
         nPYSEleNgu6GKz7ZsRX9P9h7hl14JSqRs5GC1ugZe2DzJdYVw4dSZLLXH1qGLj3wbh9w
         3VBhhuK9jsLf7ov766dluW26J0kdqKsx/5exIjR1caK/Ec5BL6yhQNvafIN/zQc6zNNF
         zGJrsKWuPzZvBcmylKdeBnnvSG+YXBiqQEWTEDsw+4cbRsEVT/nJh+4Jh7giJrIa9uLm
         MfkSNTjOM6WP+uxRb0KB8Mug+s5cB+GTjoEg63od7M5OvYfQuzyF9WuIwLrLdyPg11Of
         GPtg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM533bBkv5a/f2gBLBtHxhKK7NpYYDZA0M30VzuFFXdgXtp857r5Qi
	iHztbf40Nib/CcR0y2ANvK/MjA==
X-Google-Smtp-Source: ABdhPJwZgKivrtAmvZFgRb5iFEoqG6lN7pvTxOMF87Bsp/VIPch8sUF45BKQ50V5PkH6JbsFdjgmpA==
X-Received: by 2002:a05:6830:8f:: with SMTP id a15mr13968686oto.362.1605898976562;
        Fri, 20 Nov 2020 11:02:56 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6830:17cb:: with SMTP id p11ls684054ota.7.gmail; Fri, 20
 Nov 2020 11:02:56 -0800 (PST)
X-Received: by 2002:a9d:2c03:: with SMTP id f3mr8623179otb.284.1605898976305;
        Fri, 20 Nov 2020 11:02:56 -0800 (PST)
Received: by 2002:a54:4581:0:b029:e3:eb8:4d3 with SMTP id z1-20020a5445810000b02900e30eb804d3msoib;
        Fri, 20 Nov 2020 10:40:22 -0800 (PST)
X-Received: by 2002:a63:230e:: with SMTP id j14mr9767109pgj.412.1605897622323;
        Fri, 20 Nov 2020 10:40:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605897622; cv=none;
        d=google.com; s=arc-20160816;
        b=1BhRJBQpRiOl+BufGgzaT3+y00javQZV+38YhGAdN7kYaXEOiZqk/vcEAOv9GhF8Hy
         iAnam7JtyTJ/7bPCzxoCnyEWH23g9E+V3krrXg6+4/L8P4/2M8+Gs0aT7XENzM8Lk0yX
         A/MTxJCEPXGOObMoR22Xyc3CNURhet09DO+4xzE73IyyUgIfdtUQ1NQqwmCTOyRoF9Et
         5S/jWrlZ6TEv3GbVDNkP10c7f5Rdc1oZI9AYT3braBe/+ZL4qU9dvVmIPT3Q6hTXPXNk
         sZXgod78nKWpAWBgkxPE4AYGLFZ+GVYtIAjlWP6OY4DAapTa1ofOW0PLBsg5vqsCU6Cv
         x1VQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=OsnxW7x3CriXxhN5RsnWYdz3oiCPTGwTy9UeMxS0I6k=;
        b=GWrSoPddZ/CPcd+Shsi9IZrX6MBxysRoClX3OJXMWIoUBomlnFZROk0pcKeqgV9dXB
         s5Bc6Z6r7WW+sQlVOYDObZEenwSC/7VkmIX+76JwixE3T3ecnfzR/wCF9Tisy34Tf7fz
         wGgGAtM3nu480ei+1XRzBDj/UyVW3Tlfq3AGNx5+A0EPjLttBvhpFb01+bQ417Cv/No8
         ts6YD7Q6Z7ZKgxKUFFIpNBI3I8tGCHRSJAOvY1BcJgGTiAhtkVyzzJSpcL7bzb8mJfMi
         VLhFbgsYJ/VhBcwENpkK0NfMY/2OTG23TYm8RiM1+TfBtwyccyb5ZgB+qlZKTh6Nb/B3
         noPQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Jy2staIP;
       spf=pass (google.com: domain of gustavoars@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gustavoars@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by mx.google.com with ESMTPS id e21si3355772pld.82.2020.11.20.10.40.22
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Nov 2020 10:40:22 -0800 (PST)
Received-SPF: pass (google.com: domain of gustavoars@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from embeddedor (187-162-31-110.static.axtel.net [187.162.31.110])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A9CDA241A6;
	Fri, 20 Nov 2020 18:40:20 +0000 (UTC)
Date: Fri, 20 Nov 2020 12:40:27 -0600
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: Felipe Balbi <balbi@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Olav Kongas <ok@artecdesign.ee>, Bin Liu <b-liu@ti.com>,
	Alan Stern <stern@rowland.harvard.edu>,
	Oliver Neukum <oneukum@suse.com>
Cc: linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net, linux-scsi@vger.kernel.org,
	linux-hardening@vger.kernel.org,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>
Subject: [usb-storage] [PATCH 133/141] usb: Fix fall-through warnings for Clang
Message-ID: <a76da7ca5b4f41c13d27b298accb8222d0b04e61.1605896060.git.gustavoars@kernel.org>
References: <cover.1605896059.git.gustavoars@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <cover.1605896059.git.gustavoars@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: gustavoars@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=Jy2staIP;       spf=pass
 (google.com: domain of gustavoars@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gustavoars@kernel.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

In preparation to enable -Wimplicit-fallthrough for Clang, fix multiple
warnings by explicitly adding multiple break/return/fallthrough
statements instead of letting the code fall through to the next
case.

Link: https://github.com/KSPP/linux/issues/115
Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
---
 drivers/usb/gadget/function/f_fs.c         | 2 ++
 drivers/usb/gadget/function/f_loopback.c   | 2 +-
 drivers/usb/gadget/function/f_sourcesink.c | 1 +
 drivers/usb/gadget/udc/dummy_hcd.c         | 2 ++
 drivers/usb/host/fotg210-hcd.c             | 2 +-
 drivers/usb/host/isp116x-hcd.c             | 1 +
 drivers/usb/host/max3421-hcd.c             | 1 +
 drivers/usb/host/oxu210hp-hcd.c            | 1 +
 drivers/usb/misc/yurex.c                   | 1 +
 drivers/usb/musb/tusb6010.c                | 1 +
 drivers/usb/storage/ene_ub6250.c           | 1 +
 drivers/usb/storage/uas.c                  | 1 +
 12 files changed, 14 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/gadget/function/f_fs.c b/drivers/usb/gadget/function/f_fs.c
index 046f770a76da..7f9c4e35d3db 100644
--- a/drivers/usb/gadget/function/f_fs.c
+++ b/drivers/usb/gadget/function/f_fs.c
@@ -678,6 +678,8 @@ static __poll_t ffs_ep0_poll(struct file *file, poll_table *wait)
 			mask |= (EPOLLIN | EPOLLOUT);
 			break;
 		}
+		break;
+
 	case FFS_CLOSING:
 		break;
 	case FFS_DEACTIVATED:
diff --git a/drivers/usb/gadget/function/f_loopback.c b/drivers/usb/gadget/function/f_loopback.c
index 1803646b3678..b56ad7c3838b 100644
--- a/drivers/usb/gadget/function/f_loopback.c
+++ b/drivers/usb/gadget/function/f_loopback.c
@@ -274,7 +274,7 @@ static void loopback_complete(struct usb_ep *ep, struct usb_request *req)
 	default:
 		ERROR(cdev, "%s loop complete --> %d, %d/%d\n", ep->name,
 				status, req->actual, req->length);
-		/* FALLTHROUGH */
+		fallthrough;
 
 	/* NOTE:  since this driver doesn't maintain an explicit record
 	 * of requests it submitted (just maintains qlen count), we
diff --git a/drivers/usb/gadget/function/f_sourcesink.c b/drivers/usb/gadget/function/f_sourcesink.c
index ed68a4860b7d..5a201ba7b155 100644
--- a/drivers/usb/gadget/function/f_sourcesink.c
+++ b/drivers/usb/gadget/function/f_sourcesink.c
@@ -559,6 +559,7 @@ static void source_sink_complete(struct usb_ep *ep, struct usb_request *req)
 #if 1
 		DBG(cdev, "%s complete --> %d, %d/%d\n", ep->name,
 				status, req->actual, req->length);
+		break;
 #endif
 	case -EREMOTEIO:		/* short read */
 		break;
diff --git a/drivers/usb/gadget/udc/dummy_hcd.c b/drivers/usb/gadget/udc/dummy_hcd.c
index 53a227217f1c..bb0dc67ecdd3 100644
--- a/drivers/usb/gadget/udc/dummy_hcd.c
+++ b/drivers/usb/gadget/udc/dummy_hcd.c
@@ -553,6 +553,7 @@ static int dummy_enable(struct usb_ep *_ep,
 				/* we'll fake any legal size */
 				break;
 			/* save a return statement */
+			fallthrough;
 		default:
 			goto done;
 		}
@@ -595,6 +596,7 @@ static int dummy_enable(struct usb_ep *_ep,
 			if (max <= 1023)
 				break;
 			/* save a return statement */
+			fallthrough;
 		default:
 			goto done;
 		}
diff --git a/drivers/usb/host/fotg210-hcd.c b/drivers/usb/host/fotg210-hcd.c
index 1d94fcfac2c2..0451943f0bc4 100644
--- a/drivers/usb/host/fotg210-hcd.c
+++ b/drivers/usb/host/fotg210-hcd.c
@@ -5276,7 +5276,7 @@ static int fotg210_urb_enqueue(struct usb_hcd *hcd, struct urb *urb,
 		 */
 		if (urb->transfer_buffer_length > (16 * 1024))
 			return -EMSGSIZE;
-		/* FALLTHROUGH */
+		fallthrough;
 	/* case PIPE_BULK: */
 	default:
 		if (!qh_urb_transaction(fotg210, urb, &qtd_list, mem_flags))
diff --git a/drivers/usb/host/isp116x-hcd.c b/drivers/usb/host/isp116x-hcd.c
index 3055d9abfec3..8544a2a2c1e6 100644
--- a/drivers/usb/host/isp116x-hcd.c
+++ b/drivers/usb/host/isp116x-hcd.c
@@ -1447,6 +1447,7 @@ static int isp116x_bus_resume(struct usb_hcd *hcd)
 		val &= ~HCCONTROL_HCFS;
 		val |= HCCONTROL_USB_RESUME;
 		isp116x_write_reg32(isp116x, HCCONTROL, val);
+		break;
 	case HCCONTROL_USB_RESUME:
 		break;
 	case HCCONTROL_USB_OPER:
diff --git a/drivers/usb/host/max3421-hcd.c b/drivers/usb/host/max3421-hcd.c
index 0894f6caccb2..0b5d47e6aab2 100644
--- a/drivers/usb/host/max3421-hcd.c
+++ b/drivers/usb/host/max3421-hcd.c
@@ -1537,6 +1537,7 @@ max3421_urb_enqueue(struct usb_hcd *hcd, struct urb *urb, gfp_t mem_flags)
 				__func__, urb->interval);
 			return -EINVAL;
 		}
+		break;
 	default:
 		break;
 	}
diff --git a/drivers/usb/host/oxu210hp-hcd.c b/drivers/usb/host/oxu210hp-hcd.c
index 27dbbe1b28b1..aa42df39e6a1 100644
--- a/drivers/usb/host/oxu210hp-hcd.c
+++ b/drivers/usb/host/oxu210hp-hcd.c
@@ -1365,6 +1365,7 @@ __acquires(oxu->lock)
 	switch (urb->status) {
 	case -EINPROGRESS:		/* success */
 		urb->status = 0;
+		break;
 	default:			/* fault */
 		break;
 	case -EREMOTEIO:		/* fault or normal */
diff --git a/drivers/usb/misc/yurex.c b/drivers/usb/misc/yurex.c
index e3165d79b5f6..73ebfa6e9715 100644
--- a/drivers/usb/misc/yurex.c
+++ b/drivers/usb/misc/yurex.c
@@ -137,6 +137,7 @@ static void yurex_interrupt(struct urb *urb)
 		dev_err(&dev->interface->dev,
 			"%s - overflow with length %d, actual length is %d\n",
 			__func__, YUREX_BUF_SIZE, dev->urb->actual_length);
+		return;
 	case -ECONNRESET:
 	case -ENOENT:
 	case -ESHUTDOWN:
diff --git a/drivers/usb/musb/tusb6010.c b/drivers/usb/musb/tusb6010.c
index c26683a2702b..c42937692207 100644
--- a/drivers/usb/musb/tusb6010.c
+++ b/drivers/usb/musb/tusb6010.c
@@ -467,6 +467,7 @@ static void musb_do_idle(struct timer_list *t)
 		fallthrough;
 	case OTG_STATE_A_IDLE:
 		tusb_musb_set_vbus(musb, 0);
+		break;
 	default:
 		break;
 	}
diff --git a/drivers/usb/storage/ene_ub6250.c b/drivers/usb/storage/ene_ub6250.c
index 98c1aa594e6c..5f7d678502be 100644
--- a/drivers/usb/storage/ene_ub6250.c
+++ b/drivers/usb/storage/ene_ub6250.c
@@ -861,6 +861,7 @@ static int ms_count_freeblock(struct us_data *us, u16 PhyBlock)
 		case MS_LB_NOT_USED:
 		case MS_LB_NOT_USED_ERASED:
 			Count++;
+			break;
 		default:
 			break;
 		}
diff --git a/drivers/usb/storage/uas.c b/drivers/usb/storage/uas.c
index c8a577309e8f..6bd33c57fdcb 100644
--- a/drivers/usb/storage/uas.c
+++ b/drivers/usb/storage/uas.c
@@ -690,6 +690,7 @@ static int uas_queuecommand_lck(struct scsi_cmnd *cmnd,
 		fallthrough;
 	case DMA_TO_DEVICE:
 		cmdinfo->state |= ALLOC_DATA_OUT_URB | SUBMIT_DATA_OUT_URB;
+		break;
 	case DMA_NONE:
 		break;
 	}
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/a76da7ca5b4f41c13d27b298accb8222d0b04e61.1605896060.git.gustavoars%40kernel.org.
