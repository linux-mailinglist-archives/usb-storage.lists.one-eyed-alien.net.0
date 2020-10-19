Return-Path: <usb-storage+bncBC27X66SWQMBB5WUW36AKGQEOTA23JI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-yb1-xb47.google.com (mail-yb1-xb47.google.com [IPv6:2607:f8b0:4864:20::b47])
	by mail.lfdr.de (Postfix) with ESMTPS id CFDD32929F2
	for <lists+usb-storage@lfdr.de>; Mon, 19 Oct 2020 17:02:15 +0200 (CEST)
Received: by mail-yb1-xb47.google.com with SMTP id i129sf3239820ybc.11
        for <lists+usb-storage@lfdr.de>; Mon, 19 Oct 2020 08:02:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603119735; cv=pass;
        d=google.com; s=arc-20160816;
        b=AonadYfNjBo+ZUHwP1etYRx0ZJEEQLYbx1+60O2BxZXyrFVCW+B2ARerWn/6y9pX6h
         fVQvPN5a1EA0LajbMIDcasYjpsRgXrHIKT52OaxC+esGLUx1yvCGbVr+VJGH94TsGY8v
         s3WOnO/xdCHyCl6KQIVXBTO3w/pzsiwZnWU47CjBklN5eRUCW+LYf5XribGltczsN56L
         D9+Evtx+EuAzkfDNjATUBrKFtR8mPnYflMyLSpdcoU0BSNZ4Y7ZWGyWDEm9ABf3BRc7e
         pqerq3Z5KzuzOxEFAEB8mOQaaumhpj/MpMhKCHwLjH1ucTNlxt9zd/UnvD9MMEjrJaCX
         besA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=0IPINOcnvCAosrDQ3ZeZ0a9e6EVJAiuo8nvE3rD+qLA=;
        b=cUhgoYI3XMIPc2pYLx61MAlbF+k68OLi3RBa2YfWmvK3slCv47g7CgMZAfSqp8uTh5
         +gLRjdwuAyCnpCrlwRXkNzTtfVh93kYEDh03w1VWdj7FPzEnC6rm7AxGXrzl7PDVBb9r
         BiBcN7yoX/q3dWlPpe86n370QnBpEiKkqFPfhFaW8DwC5nKc+aqtmhx+ebOwnzp8tPNm
         XOxyRIiZqsGzdCzJvQiJiUConUNZRXT1Jg3x54pL3CM9MKXj/GECjswK1aHvhjZBvuR1
         H9L+Wi0UWj3HpYBCIGydOwbC9eM0U0nQw8pjojWsla6wJDfTiJ4yeKaRw4I4yF5n6W0V
         fdRw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=dQYTnEhM;
       spf=pass (google.com: domain of trix@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0IPINOcnvCAosrDQ3ZeZ0a9e6EVJAiuo8nvE3rD+qLA=;
        b=GSB79GIXeNrryF56U6gJWwJT2V8Aswgx3pGpRD5CgR37KjaVHOVIuyePuY0Udm2Z6O
         HQh4T1yrL8UpmJ4ydDYuBqzuecwfE7utEkQHLh0mGtv5lh8FZG7ploWqGfXmOOdv6C9H
         yFwUDUN+tesE5b+474c/vNbyUz6vxatmXFGb4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0IPINOcnvCAosrDQ3ZeZ0a9e6EVJAiuo8nvE3rD+qLA=;
        b=Zf2E6OH+Z/mJjTQhPyFA7LJ41i3nqwF9angNfB8uWWhhqrkwtMvpqy5FxzFuyBYFVU
         50UJQloF99E9KHPTlmjDE6KHZzR/OQSDjXYO2qUUqhATRiW0MvkX10fKnYJTl256S7dJ
         DCUixt5Nd60ZWwMPm+aNCwnT7+EBDHSb2T7stGJ7Ba82IpXPZvtjaYRsyiJTyt0A/6K/
         0mF7jm/d8S9tHYcaci8s7TyIyf+hJ07LHXEcniNzK1GTKJwGuuiajt76w8ToKyn3UKML
         uG4qc5Mizs5XoHkgsrv0L9+6C9WmS7sZJ8Hv9hc8TvtzLlmvgfi3FYDiogY5pzrCZcc0
         F8tA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM533c0Mxgo9ILAlxFgosRp8WuC4f2glVFrnCWPwBB78y9XMS9wz9+
	4KUK2dw8IyUt1JrKxzJiJ2gU7g==
X-Google-Smtp-Source: ABdhPJycG94q1ITKnaqEGvpNdooXO7zfJuFE61b5y0M5iwUOmSdmInVKWIlQjyGPDEGbep4+XT3LoQ==
X-Received: by 2002:a25:c00e:: with SMTP id c14mr125229ybf.418.1603119734706;
        Mon, 19 Oct 2020 08:02:14 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a25:cf07:: with SMTP id f7ls24314ybg.4.gmail; Mon, 19 Oct
 2020 08:02:14 -0700 (PDT)
X-Received: by 2002:a25:3c81:: with SMTP id j123mr66510yba.359.1603119734040;
        Mon, 19 Oct 2020 08:02:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603119734; cv=none;
        d=google.com; s=arc-20160816;
        b=O9z8IUCwQQPRUVprLXXx1s/6QytVqmfABntPhcH4REcNKd9bIyrk928CjsQDA2n3rQ
         9MR35cidP3cUS22N+nOyTIZ0suvyNykG7cLERAj8GamGH9fH8teZaVAsaNtekBo5a7Js
         TazrxMnXhuFFyKjm4W8D4U906bv0IXmfNKgblHy54nDmesSMyryiDC26A1cfhjsGmfAk
         bs5FK7TFSrUB+IhyikQ/tTZrIJyO806h2wIEmbM3QewxSB+u+AqWlEQJStDylKVpkQ0H
         O7q5r76MliAidESdW9vzZASjQgwskff71or6v46Fa+I8ONQuDs1/HyNWeWp7sXg1Xtgr
         7nAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=/bD/dsuRX3EslrvrmHEv36rr2PbUndykLo6mgMx1F70=;
        b=p5XvMKKFJabmRCYz7Ghk8PxSvQyP0lEYQ2zObySXdMoEPzn6w8NHoZK9yenf87xUCR
         08FVsTKng6u1kzfw7a+CrnIQklwM6zWsCdJ05o8jjYwtxSZkOT1wmhXaWRqOPxb4h0b5
         xEliQTJB5PdhsmFuHSqVHJgdwoeBQ0doRihfLxDMD12udE07yfYVJvlb+/I/vLEmfaWW
         tmzEk7Z+iwOAWmIyGwaw4gRMmjdO2RTzXQBJ/80SG6MIOXCZdAgjUGULHJTRy9SxxhYv
         m3Zh2XsScrRRP27BhtK8hKTYJcbUULwKFSsQ9mgHs+dgzzuhhntIvC7FLxKSeuCdAkNG
         6nyw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=dQYTnEhM;
       spf=pass (google.com: domain of trix@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by mx.google.com with ESMTPS id n79si200467ybf.74.2020.10.19.08.02.13
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Oct 2020 08:02:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of trix@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-428-DeUDgH5VMiy2FHmiJZvLvQ-1; Mon, 19 Oct 2020 11:02:09 -0400
X-MC-Unique: DeUDgH5VMiy2FHmiJZvLvQ-1
Received: by mail-qt1-f197.google.com with SMTP id d6so159953qtp.2
        for <usb-storage@lists.one-eyed-alien.net>; Mon, 19 Oct 2020 08:02:09 -0700 (PDT)
X-Received: by 2002:a37:9d0c:: with SMTP id g12mr2320565qke.264.1603119727887;
        Mon, 19 Oct 2020 08:02:07 -0700 (PDT)
X-Received: by 2002:a37:9d0c:: with SMTP id g12mr2320514qke.264.1603119727469;
        Mon, 19 Oct 2020 08:02:07 -0700 (PDT)
Received: from trix.remote.csb (075-142-250-213.res.spectrum.com. [75.142.250.213])
        by smtp.gmail.com with ESMTPSA id p1sm111874qkk.95.2020.10.19.08.02.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Oct 2020 08:02:06 -0700 (PDT)
From: trix@redhat.com
To: balbi@kernel.org,
	gregkh@linuxfoundation.org,
	mathias.nyman@intel.com,
	johan@kernel.org,
	stern@rowland.harvard.edu,
	gustavoars@kernel.org,
	viro@zeniv.linux.org.uk,
	lee.jones@linaro.org
Cc: linux-usb@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	Tom Rix <trix@redhat.com>
Subject: [usb-storage] [PATCH] usb: remove unneeded break
Date: Mon, 19 Oct 2020 08:02:02 -0700
Message-Id: <20201019150202.19713-1-trix@redhat.com>
X-Mailer: git-send-email 2.18.1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: trix@redhat.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=dQYTnEhM;
       spf=pass (google.com: domain of trix@redhat.com designates
 63.128.21.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

From: Tom Rix <trix@redhat.com>

A break is not needed if it is preceded by a return or goto

Signed-off-by: Tom Rix <trix@redhat.com>
---
 drivers/usb/gadget/function/f_hid.c | 9 ---------
 drivers/usb/host/xhci-mem.c         | 1 -
 drivers/usb/misc/iowarrior.c        | 3 ---
 drivers/usb/serial/iuu_phoenix.c    | 2 --
 drivers/usb/storage/freecom.c       | 1 -
 5 files changed, 16 deletions(-)

diff --git a/drivers/usb/gadget/function/f_hid.c b/drivers/usb/gadget/function/f_hid.c
index 1125f4715830..5204769834d1 100644
--- a/drivers/usb/gadget/function/f_hid.c
+++ b/drivers/usb/gadget/function/f_hid.c
@@ -511,9 +511,7 @@ static int hidg_setup(struct usb_function *f,
 		/* send an empty report */
 		length = min_t(unsigned, length, hidg->report_length);
 		memset(req->buf, 0x0, length);
-
 		goto respond;
-		break;
 
 	case ((USB_DIR_IN | USB_TYPE_CLASS | USB_RECIP_INTERFACE) << 8
 		  | HID_REQ_GET_PROTOCOL):
@@ -521,13 +519,11 @@ static int hidg_setup(struct usb_function *f,
 		length = min_t(unsigned int, length, 1);
 		((u8 *) req->buf)[0] = hidg->protocol;
 		goto respond;
-		break;
 
 	case ((USB_DIR_OUT | USB_TYPE_CLASS | USB_RECIP_INTERFACE) << 8
 		  | HID_REQ_SET_REPORT):
 		VDBG(cdev, "set_report | wLength=%d\n", ctrl->wLength);
 		goto stall;
-		break;
 
 	case ((USB_DIR_OUT | USB_TYPE_CLASS | USB_RECIP_INTERFACE) << 8
 		  | HID_REQ_SET_PROTOCOL):
@@ -544,7 +540,6 @@ static int hidg_setup(struct usb_function *f,
 			goto respond;
 		}
 		goto stall;
-		break;
 
 	case ((USB_DIR_IN | USB_TYPE_STANDARD | USB_RECIP_INTERFACE) << 8
 		  | USB_REQ_GET_DESCRIPTOR):
@@ -562,7 +557,6 @@ static int hidg_setup(struct usb_function *f,
 						   hidg_desc_copy.bLength);
 			memcpy(req->buf, &hidg_desc_copy, length);
 			goto respond;
-			break;
 		}
 		case HID_DT_REPORT:
 			VDBG(cdev, "USB_REQ_GET_DESCRIPTOR: REPORT\n");
@@ -570,13 +564,11 @@ static int hidg_setup(struct usb_function *f,
 						   hidg->report_desc_length);
 			memcpy(req->buf, hidg->report_desc, length);
 			goto respond;
-			break;
 
 		default:
 			VDBG(cdev, "Unknown descriptor request 0x%x\n",
 				 value >> 8);
 			goto stall;
-			break;
 		}
 		break;
 
@@ -584,7 +576,6 @@ static int hidg_setup(struct usb_function *f,
 		VDBG(cdev, "Unknown request 0x%x\n",
 			 ctrl->bRequest);
 		goto stall;
-		break;
 	}
 
 stall:
diff --git a/drivers/usb/host/xhci-mem.c b/drivers/usb/host/xhci-mem.c
index fe405cd38dbc..b46ef45c4d25 100644
--- a/drivers/usb/host/xhci-mem.c
+++ b/drivers/usb/host/xhci-mem.c
@@ -1144,7 +1144,6 @@ int xhci_setup_addressable_virt_dev(struct xhci_hcd *xhci, struct usb_device *ud
 	case USB_SPEED_WIRELESS:
 		xhci_dbg(xhci, "FIXME xHCI doesn't support wireless speeds\n");
 		return -EINVAL;
-		break;
 	default:
 		/* Speed was set earlier, this shouldn't happen. */
 		return -EINVAL;
diff --git a/drivers/usb/misc/iowarrior.c b/drivers/usb/misc/iowarrior.c
index 70ec29681526..efbd317f2f25 100644
--- a/drivers/usb/misc/iowarrior.c
+++ b/drivers/usb/misc/iowarrior.c
@@ -384,7 +384,6 @@ static ssize_t iowarrior_write(struct file *file,
 		retval = usb_set_report(dev->interface, 2, 0, buf, count);
 		kfree(buf);
 		goto exit;
-		break;
 	case USB_DEVICE_ID_CODEMERCS_IOW56:
 	case USB_DEVICE_ID_CODEMERCS_IOW56AM:
 	case USB_DEVICE_ID_CODEMERCS_IOW28:
@@ -454,14 +453,12 @@ static ssize_t iowarrior_write(struct file *file,
 		retval = count;
 		usb_free_urb(int_out_urb);
 		goto exit;
-		break;
 	default:
 		/* what do we have here ? An unsupported Product-ID ? */
 		dev_err(&dev->interface->dev, "%s - not supported for product=0x%x\n",
 			__func__, dev->product_id);
 		retval = -EFAULT;
 		goto exit;
-		break;
 	}
 error:
 	usb_free_coherent(dev->udev, dev->report_size, buf,
diff --git a/drivers/usb/serial/iuu_phoenix.c b/drivers/usb/serial/iuu_phoenix.c
index b4ba79123d9d..f1201d4de297 100644
--- a/drivers/usb/serial/iuu_phoenix.c
+++ b/drivers/usb/serial/iuu_phoenix.c
@@ -850,7 +850,6 @@ static int iuu_uart_baud(struct usb_serial_port *port, u32 baud_base,
 	default:
 		kfree(dataout);
 		return IUU_INVALID_PARAMETER;
-		break;
 	}
 
 	switch (parity & 0xF0) {
@@ -864,7 +863,6 @@ static int iuu_uart_baud(struct usb_serial_port *port, u32 baud_base,
 	default:
 		kfree(dataout);
 		return IUU_INVALID_PARAMETER;
-		break;
 	}
 
 	status = bulk_immediate(port, dataout, DataCount);
diff --git a/drivers/usb/storage/freecom.c b/drivers/usb/storage/freecom.c
index 3d5f7d0ff0f1..2b098b55c4cb 100644
--- a/drivers/usb/storage/freecom.c
+++ b/drivers/usb/storage/freecom.c
@@ -431,7 +431,6 @@ static int freecom_transport(struct scsi_cmnd *srb, struct us_data *us)
 			     us->srb->sc_data_direction);
 		/* Return fail, SCSI seems to handle this better. */
 		return USB_STOR_TRANSPORT_FAILED;
-		break;
 	}
 
 	return USB_STOR_TRANSPORT_GOOD;
-- 
2.18.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20201019150202.19713-1-trix%40redhat.com.
