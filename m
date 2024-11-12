Return-Path: <usb-storage+bncBDAOJ6534YNBBCFEZ24QMGQEGCFWAXY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf46.google.com (mail-qv1-xf46.google.com [IPv6:2607:f8b0:4864:20::f46])
	by mail.lfdr.de (Postfix) with ESMTPS id 80BFC9C5F1C
	for <lists+usb-storage@lfdr.de>; Tue, 12 Nov 2024 18:36:11 +0100 (CET)
Received: by mail-qv1-xf46.google.com with SMTP id 6a1803df08f44-6cbf039dccfsf94615656d6.0
        for <lists+usb-storage@lfdr.de>; Tue, 12 Nov 2024 09:36:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1731432970; cv=pass;
        d=google.com; s=arc-20240605;
        b=EmiiW+3wBMXYvLR19haUaMZciR+SjlEkoUr7gR7IC8NrZX1pWCOHC6a/mk+PH7iaqQ
         6zFk1aFRzTK0A1sHBc3XqTryRA3ygaMe4pdWTBaEqNkeFjXu/IKCLXtmdDBubfb4DWCM
         bbIIvLSNlteVecg1e7OPu3fDtjixzOr5TvLScR2wmPaf3LeTreKfJAMsMzlu0GGu8Ffj
         EBKlczGD5mx1470wC/OfLwB9cUZxof0y8k+D907uAOrn4KiiRVbUyIZabkwa2uoz7C7l
         HqiXgZw3LwnrIiNAyTafRZy6D1hbRvaGi+2YJ4zRExMfAuUTGuqmye7MsX5fTTWxNZqt
         5yvg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=M+ANBbMDwwupjSx9TC4dwBIRtH0btJI/9VddBYpCsJQ=;
        fh=QaxHzE78m1UZVq0veq3OtsXuuhZ5DXk1YxDE8MYQPkg=;
        b=OCW57x2sN2poWMKFxYduvZSFyWMtHBPXMTzRDkbh7p9YLLbKPcInFqoyuGBfNO11CS
         mdLyKyaEV+e6CnugcruXIiAcUZKiTpXm1/PVsEYn6NKbA9DWoAySpKix9h5wQes0FKko
         dOlIf/vVcOf7/oMu+8pmR+hOGMNnfTCTOqfoECXwAAankmII8wW/Wf5zTShUzmuQ9QYj
         O0C4CZ5Tj7hiXkuP+OP8B7pNXlMILgEvrjGm4SP0s/oN0xl7HOgWirIz/szMQMELmkFJ
         Y8MPpvcV19LTwS47SulpCCLt0iKqKjptUSEZ4gf2awZRxlw32YrHgUlmtO1sFwx8ju6p
         ev/g==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b="ZOWh1/5P";
       spf=pass (google.com: domain of snovitoll@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=snovitoll@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com;
       dara=pass header.i=@lists.one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1731432970; x=1732037770; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=M+ANBbMDwwupjSx9TC4dwBIRtH0btJI/9VddBYpCsJQ=;
        b=KG71braStmztD0cIpJdQx1P02o0zFBATbbi350qUVzt8HerZZeDIRtumEnjOnUILmy
         Hni8fkOK3yWqwUyOf3k2qVJ655C2/S6/raF4QTRrBsTc4mimv7K4NFMmRfF2iNxDlcCr
         sFp+HUpKqE+dStfGCE2Wlt7E/utXrZLKXnXQE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731432970; x=1732037770;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:x-beenthere:x-gm-message-state:sender:from
         :to:cc:subject:date:message-id:reply-to;
        bh=M+ANBbMDwwupjSx9TC4dwBIRtH0btJI/9VddBYpCsJQ=;
        b=MEiE9wGj/kOpwQgvU6zSaaXKJ18DpVQEeu/86493568eDC5XQhVUJbEMtyOb/GBL3j
         k8c4tZtJ2/8GaM2rXL5uqwOH40jbnGnVQyWMsNTNL+n3CrJE7dYaVDSbZDEcn0Q26AlH
         v+2uoTBqZav+GMFD5Gf/5lBPS1P4HfOUqETTiJoL7x9gx5ehWGPJVLopCRLr0vN27c0X
         VdlaQOGmt/n5kXDp5AyQ+kR4fxlNbj4CCXH9pDQ2W3X+lgcKUoHMIQ+j4NUM1WNPH8Wk
         4UPl+fds1vFak8rAzpz5Jo3rcB549OA7q+LG31A8rMERMQOoyPKYT2ZgUnfhiIFlV3vc
         Uotg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCV572iBQC+SuAWcdivROPjgQApFiCa3fcX/9DeGnJGiRw9hIPC/5dXvI4D1PtGOMKQ5DCKKWg==@lfdr.de
X-Gm-Message-State: AOJu0Yy2jfkAp6bWdgg4TourGAx9ObALYj1tNb8ofSwoTtDOBp7zvUpx
	9/vRN4lIdjNAwNxTzyIWf0bqqD6k1uf7nvw/9EQjtr1U00nYsY2BsNC6bg3ohAQ=
X-Google-Smtp-Source: AGHT+IGzi8EY+oO7CK2hASixE+KJjm716JgYE0OqWYmtLt03+wR5hLoTC6phRjS3qJk2qEMOLOOHQw==
X-Received: by 2002:a05:6214:3c87:b0:6ce:2651:f3b1 with SMTP id 6a1803df08f44-6d39e1e73e0mr230657396d6.41.1731432968808;
        Tue, 12 Nov 2024 09:36:08 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6214:2601:b0:6b5:da50:ac19 with SMTP id
 6a1803df08f44-6d3935555f5ls88926376d6.2.-pod-prod-07-us; Tue, 12 Nov 2024
 09:36:08 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXiSnkNUlevLN/AksK82bnAOlMKLvXhPunrWv7JuY0FUaXB4k2mqGJ8qyXA1dan6p5h09g8yN6nHhMT1Q==@lists.one-eyed-alien.net
X-Received: by 2002:a05:620a:4149:b0:7a9:bdd4:b4ea with SMTP id af79cd13be357-7b331e98d62mr2414635185a.9.1731432968253;
        Tue, 12 Nov 2024 09:36:08 -0800 (PST)
Received: by 2002:ae9:e106:0:b0:7a1:d643:94b4 with SMTP id af79cd13be357-7b34c45cf34ms85a;
        Tue, 12 Nov 2024 07:58:30 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVTLUB3D8fhpKg2RJAiS7R8gjF+TCKGGq5jKuuNtdAPDqtMxGn1jBxW/Wpast3Sjz2RRRFJgAycBjQdGg==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6000:1f86:b0:37d:4ab2:9cdc with SMTP id ffacd0b85a97d-381f186cb45mr13631710f8f.13.1731427108884;
        Tue, 12 Nov 2024 07:58:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1731427108; cv=none;
        d=google.com; s=arc-20240605;
        b=FiwwXAzW9xkycXybtSqYmCIUBXsYYbqtnJ3On4V/uYX284ymO4pJqjQHSmnzqC2ZuU
         ZRaG26Z3kPI85W8GrG8fz918yKyjwt6ZevMT8FS32VRA/A7mMy4Pkir6s8bxkABxtjBO
         6V6/OxNby+ms+I9idNLyGtukTJxjLHfEojGbmpBhuaZuTi8nqZVe0D+J56x2J3rOq/8w
         Bv+FGI77J7wt9jLl5DMja2kgdd1olfCiBxAoOBPHLpAf7DHNm+Ovsa4fwuQF2j9eem/e
         rKxmh9EpdGVxtIOW1Bsx/DJGVGm8ycp7MziVyLI6OEVY6B4+s+ho+VilSG4jhYLD0HWp
         pu1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=VLrKR8h0hMM7F++0PtBceneF9LUpCKVWB9g0O0i5f7A=;
        fh=+EYzFx4zUZoUQK5uYr/B7GZkm+zdIQ0lUtNr0QZL1fI=;
        b=E02qh06GHDFzdFrf/V8MRYVNX3eg5phja+/iADV+pE3igZOR443sZpDaavrVhGX90J
         ftNWH50uqzpm3yCpjayuX5JvUk2hRq7Pjho1/rReb+1ZevW/oayExxyk0drFz1N3/mP0
         pvTShDg27zYfbb1OrSDUDqI6Lu6KEtkgXsQzyRh0/z5m0eFxo7j4gaeLcDGgnfGqnijr
         AbHu2eObLcQfhlXNdBoMGuV0MG1wQWp5x3wfy3f15yGguN+pl7EAecWHv+LU4zDiuy5F
         7NZCuJo3B7r8l3/PbqMXUy9IDkbP3WmY3SsftA6daQmTYgl/Ol2EcprDowDRSTU/2Ptm
         DVAw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b="ZOWh1/5P";
       spf=pass (google.com: domain of snovitoll@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=snovitoll@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com;
       dara=pass header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id ffacd0b85a97d-381ed9e6ba2sor4071423f8f.5.2024.11.12.07.58.28
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Tue, 12 Nov 2024 07:58:28 -0800 (PST)
Received-SPF: pass (google.com: domain of snovitoll@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCWl5iudtk1K9YB+1ELElwPJxx4t53TwGHi36H+GVyywfKqBCyBUaL8ZgtwStd80jAdAPKWCpQzSfuFkDg==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6000:1849:b0:37d:4fab:c198 with SMTP id ffacd0b85a97d-381f1872412mr13268838f8f.26.1731427108114;
        Tue, 12 Nov 2024 07:58:28 -0800 (PST)
Received: from work.. (2.133.25.254.dynamic.telecom.kz. [2.133.25.254])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-381edc1104asm15991136f8f.88.2024.11.12.07.58.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Nov 2024 07:58:27 -0800 (PST)
From: Sabyrzhan Tasbolatov <snovitoll@gmail.com>
To: gregkh@linuxfoundation.org,
	andreyknvl@gmail.com,
	b-liu@ti.com,
	johan@kernel.org,
	oneukum@suse.com,
	stern@rowland.harvard.edu
Cc: linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org,
	snovitoll@gmail.com,
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] [PATCH v2 1/8] drivers/usb/gadget: refactor min with min_t
Date: Tue, 12 Nov 2024 20:58:10 +0500
Message-Id: <20241112155817.3512577-2-snovitoll@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241112155817.3512577-1-snovitoll@gmail.com>
References: <2024111251-spill-hatchback-72da@gregkh>
 <20241112155817.3512577-1-snovitoll@gmail.com>
MIME-Version: 1.0
X-Original-Sender: snovitoll@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b="ZOWh1/5P";       spf=pass
 (google.com: domain of snovitoll@gmail.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=snovitoll@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com;       dara=pass header.i=@lists.one-eyed-alien.net
Content-Type: text/plain; charset="UTF-8"
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

Ensure type safety by using min_t() instead of casted min().

Signed-off-by: Sabyrzhan Tasbolatov <snovitoll@gmail.com>
---
 drivers/usb/gadget/composite.c               | 12 ++++++------
 drivers/usb/gadget/configfs.c                |  2 +-
 drivers/usb/gadget/function/f_fs.c           |  6 +++---
 drivers/usb/gadget/function/f_mass_storage.c |  8 ++++----
 drivers/usb/gadget/function/uvc_video.c      |  4 ++--
 drivers/usb/gadget/legacy/raw_gadget.c       |  4 ++--
 drivers/usb/gadget/udc/omap_udc.c            |  4 ++--
 drivers/usb/gadget/usbstring.c               |  2 +-
 8 files changed, 21 insertions(+), 21 deletions(-)

diff --git a/drivers/usb/gadget/composite.c b/drivers/usb/gadget/composite.c
index f25dd2cb5d03..8e8c3baa9d7e 100644
--- a/drivers/usb/gadget/composite.c
+++ b/drivers/usb/gadget/composite.c
@@ -1844,7 +1844,7 @@ composite_setup(struct usb_gadget *gadget, const struct usb_ctrlrequest *ctrl)
 					cdev->desc.bcdUSB = cpu_to_le16(0x0200);
 			}
 
-			value = min(w_length, (u16) sizeof cdev->desc);
+			value = min_t(u16, w_length, sizeof(cdev->desc));
 			memcpy(req->buf, &cdev->desc, value);
 			break;
 		case USB_DT_DEVICE_QUALIFIER:
@@ -1863,19 +1863,19 @@ composite_setup(struct usb_gadget *gadget, const struct usb_ctrlrequest *ctrl)
 		case USB_DT_CONFIG:
 			value = config_desc(cdev, w_value);
 			if (value >= 0)
-				value = min(w_length, (u16) value);
+				value = min_t(u16, w_length, value);
 			break;
 		case USB_DT_STRING:
 			value = get_string(cdev, req->buf,
 					w_index, w_value & 0xff);
 			if (value >= 0)
-				value = min(w_length, (u16) value);
+				value = min_t(u16, w_length, value);
 			break;
 		case USB_DT_BOS:
 			if (gadget_is_superspeed(gadget) ||
 			    gadget->lpm_capable || cdev->use_webusb) {
 				value = bos_desc(cdev);
-				value = min(w_length, (u16) value);
+				value = min_t(u16, w_length, value);
 			}
 			break;
 		case USB_DT_OTG:
@@ -1930,7 +1930,7 @@ composite_setup(struct usb_gadget *gadget, const struct usb_ctrlrequest *ctrl)
 			*(u8 *)req->buf = cdev->config->bConfigurationValue;
 		else
 			*(u8 *)req->buf = 0;
-		value = min(w_length, (u16) 1);
+		value = min_t(u16, w_length, 1);
 		break;
 
 	/* function drivers must handle get/set altsetting */
@@ -1976,7 +1976,7 @@ composite_setup(struct usb_gadget *gadget, const struct usb_ctrlrequest *ctrl)
 		if (value < 0)
 			break;
 		*((u8 *)req->buf) = value;
-		value = min(w_length, (u16) 1);
+		value = min_t(u16, w_length, 1);
 		break;
 	case USB_REQ_GET_STATUS:
 		if (gadget_is_otg(gadget) && gadget->hnp_polling_support &&
diff --git a/drivers/usb/gadget/configfs.c b/drivers/usb/gadget/configfs.c
index c82a6a0fba93..6499a88d346c 100644
--- a/drivers/usb/gadget/configfs.c
+++ b/drivers/usb/gadget/configfs.c
@@ -1184,7 +1184,7 @@ static ssize_t os_desc_qw_sign_store(struct config_item *item, const char *page,
 	struct gadget_info *gi = os_desc_item_to_gadget_info(item);
 	int res, l;
 
-	l = min((int)len, OS_STRING_QW_SIGN_LEN >> 1);
+	l = min_t(int, len, OS_STRING_QW_SIGN_LEN >> 1);
 	if (page[l - 1] == '\n')
 		--l;
 
diff --git a/drivers/usb/gadget/function/f_fs.c b/drivers/usb/gadget/function/f_fs.c
index 2920f8000bbd..2ccf7f4e4db1 100644
--- a/drivers/usb/gadget/function/f_fs.c
+++ b/drivers/usb/gadget/function/f_fs.c
@@ -456,7 +456,7 @@ static ssize_t ffs_ep0_write(struct file *file, const char __user *buf,
 		}
 
 		/* FFS_SETUP_PENDING and not stall */
-		len = min(len, (size_t)le16_to_cpu(ffs->ev.setup.wLength));
+		len = min_t(size_t, len, le16_to_cpu(ffs->ev.setup.wLength));
 
 		spin_unlock_irq(&ffs->ev.waitq.lock);
 
@@ -590,7 +590,7 @@ static ssize_t ffs_ep0_read(struct file *file, char __user *buf,
 
 		/* unlocks spinlock */
 		return __ffs_ep0_read_events(ffs, buf,
-					     min(n, (size_t)ffs->ev.count));
+					     min_t(size_t, n, ffs->ev.count));
 
 	case FFS_SETUP_PENDING:
 		if (ffs->ev.setup.bRequestType & USB_DIR_IN) {
@@ -599,7 +599,7 @@ static ssize_t ffs_ep0_read(struct file *file, char __user *buf,
 			goto done_mutex;
 		}
 
-		len = min(len, (size_t)le16_to_cpu(ffs->ev.setup.wLength));
+		len = min_t(size_t, len, le16_to_cpu(ffs->ev.setup.wLength));
 
 		spin_unlock_irq(&ffs->ev.waitq.lock);
 
diff --git a/drivers/usb/gadget/function/f_mass_storage.c b/drivers/usb/gadget/function/f_mass_storage.c
index 08e0d1c511e8..2eae8fc2e0db 100644
--- a/drivers/usb/gadget/function/f_mass_storage.c
+++ b/drivers/usb/gadget/function/f_mass_storage.c
@@ -500,7 +500,7 @@ static int fsg_setup(struct usb_function *f,
 		*(u8 *)req->buf = _fsg_common_get_max_lun(fsg->common);
 
 		/* Respond with data/status */
-		req->length = min((u16)1, w_length);
+		req->length = min_t(u16, 1, w_length);
 		return ep0_queue(fsg->common);
 	}
 
@@ -655,7 +655,7 @@ static int do_read(struct fsg_common *common)
 		 * And don't try to read past the end of the file.
 		 */
 		amount = min(amount_left, FSG_BUFLEN);
-		amount = min((loff_t)amount,
+		amount = min_t(loff_t, amount,
 			     curlun->file_length - file_offset);
 
 		/* Wait for the next buffer to become available */
@@ -1005,7 +1005,7 @@ static int do_verify(struct fsg_common *common)
 		 * And don't try to read past the end of the file.
 		 */
 		amount = min(amount_left, FSG_BUFLEN);
-		amount = min((loff_t)amount,
+		amount = min_t(loff_t, amount,
 			     curlun->file_length - file_offset);
 		if (amount == 0) {
 			curlun->sense_data =
@@ -2167,7 +2167,7 @@ static int do_scsi_command(struct fsg_common *common)
 	if (reply == -EINVAL)
 		reply = 0;		/* Error reply length */
 	if (reply >= 0 && common->data_dir == DATA_DIR_TO_HOST) {
-		reply = min((u32)reply, common->data_size_from_cmnd);
+		reply = min_t(u32, reply, common->data_size_from_cmnd);
 		bh->inreq->length = reply;
 		bh->state = BUF_STATE_FULL;
 		common->residue -= reply;
diff --git a/drivers/usb/gadget/function/uvc_video.c b/drivers/usb/gadget/function/uvc_video.c
index 57a851151225..23064626ddb7 100644
--- a/drivers/usb/gadget/function/uvc_video.c
+++ b/drivers/usb/gadget/function/uvc_video.c
@@ -78,7 +78,7 @@ uvc_video_encode_data(struct uvc_video *video, struct uvc_buffer *buf,
 
 	/* Copy video data to the USB buffer. */
 	mem = buf->mem + queue->buf_used;
-	nbytes = min((unsigned int)len, buf->bytesused - queue->buf_used);
+	nbytes = min_t(unsigned int, len, buf->bytesused - queue->buf_used);
 
 	memcpy(data, mem, nbytes);
 	queue->buf_used += nbytes;
@@ -104,7 +104,7 @@ uvc_video_encode_bulk(struct usb_request *req, struct uvc_video *video,
 	}
 
 	/* Process video data. */
-	len = min((int)(video->max_payload_size - video->payload_size), len);
+	len = min_t(int, video->max_payload_size - video->payload_size, len);
 	ret = uvc_video_encode_data(video, buf, mem, len);
 
 	video->payload_size += ret;
diff --git a/drivers/usb/gadget/legacy/raw_gadget.c b/drivers/usb/gadget/legacy/raw_gadget.c
index 112fd18d8c99..20165e1582d9 100644
--- a/drivers/usb/gadget/legacy/raw_gadget.c
+++ b/drivers/usb/gadget/legacy/raw_gadget.c
@@ -782,7 +782,7 @@ static int raw_ioctl_ep0_read(struct raw_dev *dev, unsigned long value)
 	if (ret < 0)
 		goto free;
 
-	length = min(io.length, (unsigned int)ret);
+	length = min_t(unsigned int, io.length, ret);
 	if (copy_to_user((void __user *)(value + sizeof(io)), data, length))
 		ret = -EFAULT;
 	else
@@ -1168,7 +1168,7 @@ static int raw_ioctl_ep_read(struct raw_dev *dev, unsigned long value)
 	if (ret < 0)
 		goto free;
 
-	length = min(io.length, (unsigned int)ret);
+	length = min_t(unsigned int, io.length, ret);
 	if (copy_to_user((void __user *)(value + sizeof(io)), data, length))
 		ret = -EFAULT;
 	else
diff --git a/drivers/usb/gadget/udc/omap_udc.c b/drivers/usb/gadget/udc/omap_udc.c
index 61a45e4657d5..38b1d90d026f 100644
--- a/drivers/usb/gadget/udc/omap_udc.c
+++ b/drivers/usb/gadget/udc/omap_udc.c
@@ -576,13 +576,13 @@ static void finish_in_dma(struct omap_ep *ep, struct omap_req *req, int status)
 
 static void next_out_dma(struct omap_ep *ep, struct omap_req *req)
 {
-	unsigned packets = req->req.length - req->req.actual;
+	unsigned int packets = req->req.length - req->req.actual;
 	int dma_trigger = 0;
 	u16 w;
 
 	/* set up this DMA transfer, enable the fifo, start */
 	packets /= ep->ep.maxpacket;
-	packets = min(packets, (unsigned)UDC_RXN_TC + 1);
+	packets = min_t(unsigned int, packets, UDC_RXN_TC + 1);
 	req->dma_bytes = packets * ep->ep.maxpacket;
 	omap_set_dma_transfer_params(ep->lch, OMAP_DMA_DATA_TYPE_S16,
 			ep->ep.maxpacket >> 1, packets,
diff --git a/drivers/usb/gadget/usbstring.c b/drivers/usb/gadget/usbstring.c
index 75f6f99f8173..37a2f1b61cba 100644
--- a/drivers/usb/gadget/usbstring.c
+++ b/drivers/usb/gadget/usbstring.c
@@ -55,7 +55,7 @@ usb_gadget_get_string (const struct usb_gadget_strings *table, int id, u8 *buf)
 		return -EINVAL;
 
 	/* string descriptors have length, tag, then UTF16-LE text */
-	len = min((size_t)USB_MAX_STRING_LEN, strlen(s->s));
+	len = min_t(size_t, USB_MAX_STRING_LEN, strlen(s->s));
 	len = utf8s_to_utf16s(s->s, len, UTF16_LITTLE_ENDIAN,
 			(wchar_t *) &buf[2], USB_MAX_STRING_LEN);
 	if (len < 0)
-- 
2.34.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20241112155817.3512577-2-snovitoll%40gmail.com.
