Return-Path: <usb-storage+bncBCU3TE7MRIPRB3XBQ64QMGQEZ5O7XCY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc45.google.com (mail-oo1-xc45.google.com [IPv6:2607:f8b0:4864:20::c45])
	by mail.lfdr.de (Postfix) with ESMTPS id F14919B5E0A
	for <lists+usb-storage@lfdr.de>; Wed, 30 Oct 2024 09:40:16 +0100 (CET)
Received: by mail-oo1-xc45.google.com with SMTP id 006d021491bc7-5eb7db06bf5sf5502105eaf.0
        for <lists+usb-storage@lfdr.de>; Wed, 30 Oct 2024 01:40:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1730277615; cv=pass;
        d=google.com; s=arc-20240605;
        b=J587dVlmqq1wgu7pMODg+XwtCPIygLfPbqvpPdwEsDtIjVo0O0yuL0sxYJcmi5dRpG
         fGiXiyXhTyaoB66mNSyIzTr0+wYha83WP59PxxKNArsbooFI/GIRNpAYrOgeCuDUSr5m
         sHpq5EHqhH6+ltiVdqUvdqzb98tfNUhufdRuipesKAI+ebXhFk5byFiSTngV5heLFXqW
         KvlfAJCJiXSh72IusytNLQoOPATiZIQMOnmCPhw/7gx7iAMkhudfH7XpOQWi9v74fVAA
         v6tcZ60x45gZtsV47LbzPRuwELxMVXMp7oRyYJJdEaORRPL1UC1o0PzLmVocXQ8aamMx
         Uk4A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=1g9YC2gZeCz2nM/vyO6bffsDTybR4BYz7OOSNxXTTDY=;
        fh=1RZzUMLDidn9gCEoa9SLVLbI6f+3Wr9mv007kWfXNjQ=;
        b=KlVP5Rd9cNX3yVBSQAW9SQ+juWgBtQV4Ci2Y4JqEWsWtyMQji4Cnh8PVHE85i2unRt
         dpBfAkt509Vb7Lx2CpFf6Ls2cAh5XAHkqhiOq1cb39ryBU3HLDIZjSfBiXkG4JbAA1Cy
         D3HwkGiShc9Evkm3+DwncYNpJIhqBeJ95Bado0ln/GdOgm6IrcJ8qv8gJvaYQiYsBSrP
         SJnVQ7FHnWmwqKrq/w8dtGuCkTdWTH7f+jUjPAsfkxPLLsGVK4bA01cpqzS8c+JkjDLz
         6EcdwYF+FLitUSUGpRn7penajvThtc0VEADmDctMGe+wylebL4BHbpqcmteKV6qY3n5r
         Fsqg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@163.com header.s=s110527 header.b=lCka1MBY;
       spf=pass (google.com: domain of 18500469033@163.com designates 220.197.31.2 as permitted sender) smtp.mailfrom=18500469033@163.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1730277615; x=1730882415; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=1g9YC2gZeCz2nM/vyO6bffsDTybR4BYz7OOSNxXTTDY=;
        b=Z+8oHN0tZ9eHMuYeM3ur5Z3H7+FQmVUubK6NBhxvgWDkUfOPcU/PEaQla9VJLqhOkg
         dZawzRip5iNOe89WqdI04QlmkOfv59rEA+dd6jxBTJiRF/b+iZPm/ZgDEQtzLDBzt6iW
         i6X/qk/oMqLhjVpnIvhUpVnpeJveJns2B6Q2Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730277615; x=1730882415;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=1g9YC2gZeCz2nM/vyO6bffsDTybR4BYz7OOSNxXTTDY=;
        b=fnkoj7SxKgzxlA7xEkDMQ/Syf8Wmxnu/m47xy84O5lAVZI0ZmWb2GjPdI2eq+MD+tT
         axGSpl1HXnJA+QNxx7sI0u7LiHnF0IWJ0PBDuIhKprKnTj/+LTLkJfhM+GchdBj02JCk
         LdmMEMOtN9VSa+gcHGYHxITLdcCQHw5YhPa/JiWBB/DNpgOl2bGItC6JlOsSJhTHSBq3
         PWVXboiji/2wrfJ7UEk9/c5VXH/AcSukX+y2oE+b/9T6J4uGVyuN9I+LWpTqy0zjs3wl
         sMsV7s0by7WIwAqRdN/6nb/t1Ba+/c6tiQ2YzSfylgHYeKZS//lOL2F9AVFlkCt0kjgI
         /t6w==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUTn6Dpiv/Bx8bPzv461ysUGFEHLp2iRN/ywDD9kGULf6habD6e0gOBUDij0MjKQzrKmKxhjw==@lfdr.de
X-Gm-Message-State: AOJu0Ywy+icHHmFw9wwaT5eviCVqcrLvaR0wYi1GJN3Mm7YiYNX4c4bF
	+DsFyQR2boTc4ZltFPS3AFVLE/ryOVeo7TdfeXl97CqZiAcNzsyYEExRzcvYJSQ=
X-Google-Smtp-Source: AGHT+IFAMRh29gBG1bAgZm08jEJ0SuKOjcXBF/OO9+XPn2XAHsRFWEvpXn2wBPyXYowNmZ06Sclvug==
X-Received: by 2002:a05:6820:541:b0:5eb:db1c:a860 with SMTP id 006d021491bc7-5ec23aa5cd5mr10127554eaf.8.1730277615342;
        Wed, 30 Oct 2024 01:40:15 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6820:7402:b0:5ec:5a16:5f4a with SMTP id
 006d021491bc7-5ec5a1661f5ls952320eaf.0.-pod-prod-08-us; Wed, 30 Oct 2024
 01:40:14 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCV6Jjqh3cY4mpZKhaYZKzucSm4SVOq880kjCNJsFvX41kdxtIKCx0e3bbmfCfD6Uf0jad87fUCsBaPnvQ==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6830:34a8:b0:715:3258:4ea9 with SMTP id 46e09a7af769-71868228ebfmr14933321a34.16.1730277614298;
        Wed, 30 Oct 2024 01:40:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1730277614; cv=none;
        d=google.com; s=arc-20240605;
        b=e9paqfuFVm/xzRMLJRNI5aUgr6ERhkuYZ3tDyNbny/fnfya/GLsDu740MRpG5V48oS
         DhSDiM9E/whpNzYoIQxMJAnj8jP+T2rvvDbthMGCACye7TtBs4TpVN0UUAmT7Z3FTye9
         Cc0RZggUprOwujMCcvLjq80kksCto/lF4fJpwXtSYvQEbRYi/OX+1LuqKkHo9ShG3y+q
         qRoo/0k+gLWEyW0VaF6Py/JTGFppSA1hy9nqJyHQMheHFtToUXkVLKW6A21M8P85pY2B
         ipBOl+iA3SidhGrhPBeJmouobnSYOATmx6EEQTFlJFe+F0L3MZXvus5senNllQstDzab
         uOkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=rc77AIZnH6tV5UZgxVycG9R3Z5ku1bY+hII0hTHlR9o=;
        fh=KM4gxFMF34Pj4LTDJXYYuOb6bZDcepCD7Z6FRIrVgjs=;
        b=PMN7A3ePBI+6lP21if4eOCxW2rmsPxHQhoVidShMMrjE/lWzQitM9G/RBEBu/TDNMT
         I53KGCn56hTMFGZt3BzJF5znhXElbGB1Vltt/JVLPF7uWLk4OsO5kfqXIBd4ER1eSIYs
         Hub6Csuo0AZzPx0FYZjq7JkE5DbRGuTDp2Sy5uzDBam39LGgJlvUcEVzwrm2H1sTplCj
         mLEFnR4tnZtbbkPUlHl0A+i5/Urhr2qPMh9y5p3BkZCyMa3W6z8iSIof2MpfKi1v7Sjv
         sVU3WFvIHcp9d2dE1snNupp5rs6hjSmOYTE3D/VH++VZiMvH2xr++qpUSKx/+abujsKH
         uQGQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@163.com header.s=s110527 header.b=lCka1MBY;
       spf=pass (google.com: domain of 18500469033@163.com designates 220.197.31.2 as permitted sender) smtp.mailfrom=18500469033@163.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=163.com
Received: from m16.mail.163.com (m16.mail.163.com. [220.197.31.2])
        by mx.google.com with ESMTP id 41be03b00d2f7-7edc8a0b4b5si11603455a12.310.2024.10.30.01.40.13
        for <usb-storage@lists.one-eyed-alien.net>;
        Wed, 30 Oct 2024 01:40:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of 18500469033@163.com designates 220.197.31.2 as permitted sender) client-ip=220.197.31.2;
Received: from localhost.localdomain (unknown [192.19.38.250])
	by gzga-smtp-mtada-g1-1 (Coremail) with SMTP id _____wCXvgzl8CFnap+qEQ--.1837S2;
	Wed, 30 Oct 2024 16:40:08 +0800 (CST)
From: Dingyan Li <18500469033@163.com>
To: gregkh@linuxfoundation.org,
	stern@rowland.harvard.edu
Cc: linux-usb@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] [PATCH v1] usb: storage: add a macro for the upper
 limit of max LUN
Date: Wed, 30 Oct 2024 16:38:58 +0800
Message-Id: <20241030083858.46907-1-18500469033@163.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CM-TRANSID: _____wCXvgzl8CFnap+qEQ--.1837S2
X-Coremail-Antispam: 1Uf129KBjvJXoWxGw15Aw47WrykWr48JrW5Wrg_yoW5ZrW7pa
	15AFW3Ar10qrsavrWkAw4fZFyrAws7KFyUKrZrK398XFsxAFyrJr18AFZY9FW3JrW7AF4I
	vFs0gry3W3yku3JanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07jnhL8UUUUU=
X-Originating-IP: [192.19.38.250]
X-CM-SenderInfo: jprykiiquwmiitt6il2tof0z/1tbioB+Iy2ch4afX5QABsP
X-Original-Sender: 18500469033@163.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@163.com header.s=s110527 header.b=lCka1MBY;       spf=pass
 (google.com: domain of 18500469033@163.com designates 220.197.31.2 as
 permitted sender) smtp.mailfrom=18500469033@163.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=163.com
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

The meaning of this value is already used in several places,
but with constant values and comments to explain it separately.
It's better to have a central place to do this then use the macro
in those places for better readability.

Signed-off-by: Dingyan Li <18500469033@163.com>
---
 drivers/usb/gadget/function/f_tcm.c          | 8 ++------
 drivers/usb/gadget/function/storage_common.h | 2 +-
 drivers/usb/storage/transport.c              | 8 ++------
 include/linux/usb/storage.h                  | 8 ++++++++
 4 files changed, 13 insertions(+), 13 deletions(-)

diff --git a/drivers/usb/gadget/function/f_tcm.c b/drivers/usb/gadget/function/f_tcm.c
index 15bb3aa12aa8..e1914b20f816 100644
--- a/drivers/usb/gadget/function/f_tcm.c
+++ b/drivers/usb/gadget/function/f_tcm.c
@@ -441,14 +441,10 @@ static int usbg_bot_setup(struct usb_function *f,
 			pr_err("No LUNs configured?\n");
 			return -EINVAL;
 		}
-		/*
-		 * If 4 LUNs are present we return 3 i.e. LUN 0..3 can be
-		 * accessed. The upper limit is 0xf
-		 */
 		luns--;
-		if (luns > 0xf) {
+		if (luns > US_BULK_MAX_LUN_LIMIT) {
 			pr_info_once("Limiting the number of luns to 16\n");
-			luns = 0xf;
+			luns = US_BULK_MAX_LUN_LIMIT;
 		}
 		ret_lun = cdev->req->buf;
 		*ret_lun = luns;
diff --git a/drivers/usb/gadget/function/storage_common.h b/drivers/usb/gadget/function/storage_common.h
index ced5d2b09234..11ac785d5eee 100644
--- a/drivers/usb/gadget/function/storage_common.h
+++ b/drivers/usb/gadget/function/storage_common.h
@@ -131,7 +131,7 @@ static inline bool fsg_lun_is_open(struct fsg_lun *curlun)
 #define FSG_BUFLEN	((u32)16384)
 
 /* Maximal number of LUNs supported in mass storage function */
-#define FSG_MAX_LUNS	16
+#define FSG_MAX_LUNS	(US_BULK_MAX_LUN_LIMIT + 1)
 
 enum fsg_buffer_state {
 	BUF_STATE_SENDING = -2,
diff --git a/drivers/usb/storage/transport.c b/drivers/usb/storage/transport.c
index 9d767f6bf722..e6bc8ecaecbb 100644
--- a/drivers/usb/storage/transport.c
+++ b/drivers/usb/storage/transport.c
@@ -1087,13 +1087,9 @@ int usb_stor_Bulk_max_lun(struct us_data *us)
 	usb_stor_dbg(us, "GetMaxLUN command result is %d, data is %d\n",
 		     result, us->iobuf[0]);
 
-	/*
-	 * If we have a successful request, return the result if valid. The
-	 * CBW LUN field is 4 bits wide, so the value reported by the device
-	 * should fit into that.
-	 */
+	/* If we have a successful request, return the result if valid. */
 	if (result > 0) {
-		if (us->iobuf[0] < 16) {
+		if (us->iobuf[0] <= US_BULK_MAX_LUN_LIMIT) {
 			return us->iobuf[0];
 		} else {
 			dev_info(&us->pusb_intf->dev,
diff --git a/include/linux/usb/storage.h b/include/linux/usb/storage.h
index 8539956bc2be..51be3bb8fccb 100644
--- a/include/linux/usb/storage.h
+++ b/include/linux/usb/storage.h
@@ -82,4 +82,12 @@ struct bulk_cs_wrap {
 #define US_BULK_RESET_REQUEST   0xff
 #define US_BULK_GET_MAX_LUN     0xfe
 
+/*
+ * If 4 LUNs are supported then the LUNs would be
+ * numbered from 0 to 3, and the return value for
+ * US_BULK_GET_MAX_LUN request would be 3. The valid
+ * LUN field is 4 bits wide, the upper limit is 0x0f.
+ */
+#define US_BULK_MAX_LUN_LIMIT   0x0f
+
 #endif
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20241030083858.46907-1-18500469033%40163.com.
