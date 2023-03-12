Return-Path: <usb-storage+bncBDDLBMU22IMBBZVMW2QAMGQEDVCLHQI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wm1-x345.google.com (mail-wm1-x345.google.com [IPv6:2a00:1450:4864:20::345])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D5366B63E7
	for <lists+usb-storage@lfdr.de>; Sun, 12 Mar 2023 10:07:51 +0100 (CET)
Received: by mail-wm1-x345.google.com with SMTP id l16-20020a05600c1d1000b003e77552705csf3351820wms.7
        for <lists+usb-storage@lfdr.de>; Sun, 12 Mar 2023 01:07:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1678612071; cv=pass;
        d=google.com; s=arc-20160816;
        b=iH4mC014yLR2aeuwlJUrQUK8Z0GoC4mO06xdA6lYku8qMRpFMtTTh++7AB3/hlcZ0w
         Wzl9w9nFfInT6xDpRSsLYsnHoEfEhU7PnOqPURBpmDSH1wBZqyzvTsogE2QL8nLyHA7a
         jf4eWvcB9AUUpnLsYfBzrdpSztZrPNOsqBzd4OJ8KrJT3D4d2F7zlnls/CgHv2LJQx54
         latfhM4MEXa9dgD6mcE0N+BY/udB8NjqUdnnF+64fpWGDFM4i9qh9bo8jT6/3xON9Kd5
         SpzZAxR5cXl0EPzJYHJ9/WjMJNT0sIlinQRkIkh5nGOJWE6wepsXIl71fVuptCdPQmBY
         B7zA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=w6EGjcYbHx8ShFDRVxphBm8PpWV6PxW4uwictq8Kg5o=;
        b=BoJqe92uyA8S8Osw4nUAvkdF1sCWhQy3I/0K+VWHHCEbwOy4uerJuya2Xq+Hd/GeWc
         4ozPaeIxhyHP6TZtKAtxcJ678q7KSELMusLZOZXXv+jcKowQsyvv61Ydy0bk1P9bdxs1
         2N1E2uPbKnnFtzWLcxKvY3J+8StK4Y7McMJQnRjvqQyvQNK/OLLbKrFV4G5J6yOv9Y5P
         pL/mS4Kawndnwp1xGxyHSOrqZ+sGYCnaQRh5+5slBFBMSSzT8GY5RWy22VXt+T5yVLqq
         /Hijstw+HwBlGN1+lGiKW7qU1Y6bLdLZZRqvQASxCwYsZqhpP38enkbKr7ncJvAigcR+
         82fw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=RQ11GhX4;
       spf=pass (google.com: domain of yaro330@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=yaro330@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1678612071;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=w6EGjcYbHx8ShFDRVxphBm8PpWV6PxW4uwictq8Kg5o=;
        b=bROw85CyNv7M4yGUbcmgxRSK/40uXMEJYVUiCscZJMZ4AWsVavbw3kSlj8BYbu10XD
         wrYwTal5jBQtBbq0Q1EWKC04qAhAbqQJnOiIsa9DFZh1IItC4k4C5RjjQQ2zLuEI8hkR
         vmJhryIXh5+e0fLxqZVDeOCOU8xJOmbSbDyRI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678612071;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=w6EGjcYbHx8ShFDRVxphBm8PpWV6PxW4uwictq8Kg5o=;
        b=3C0Hxa71SVHH8f8pMoBVFGxd8HoKCaWY4kZh0HUzF7mn5sTSSYB3Fz7m8Iorzlh1wL
         MPi8WHsUYhBp3g6o2RbyBq1E4DolKAwi6YtH5iwwND0tX5cfyTJq7xYjQGvrrr3i5vh+
         gANVNHcZ/rfUYdRBfTh8lJMVBTCSJDlyT36N+g5C4CcsBZMn6nLRqox58zv9ugQcT5mk
         /gOLJ3o8tSNc+VIUw1vW7X4qrTcl/vafN/iv609PnPpVmenFsg04lwXUzBvq9qwS2rIb
         cexGXqlG98zww5+Hc7KrxRsk5M0/oBpOJSYIMSaRRUfYwFKyupWmAgQICb3RlAqP5MF6
         +v2A==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AO0yUKXAU/07szwFlxgKB50gYgoORg2t+jxq6dDaw8kRizfsKXgWOISF
	tPY51ywfMb31mUs7a5CEgG4SUw==
X-Google-Smtp-Source: AK7set9WgiEjcCJAppC8F8IcFixjFlm1GlOEYXrUXyzH9A1N9rIFqE32NU3H5pXLpe5YP4ys/GmP8w==
X-Received: by 2002:a7b:c2a2:0:b0:3eb:5824:f0ea with SMTP id c2-20020a7bc2a2000000b003eb5824f0eamr2189291wmk.3.1678612070645;
        Sun, 12 Mar 2023 01:07:50 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6000:78a:b0:2c5:557d:88a3 with SMTP id
 bu10-20020a056000078a00b002c5557d88a3ls10908492wrb.3.-pod-prod-gmail; Sun, 12
 Mar 2023 01:07:49 -0800 (PST)
X-Received: by 2002:adf:dd49:0:b0:2c7:1aaa:750 with SMTP id u9-20020adfdd49000000b002c71aaa0750mr20012581wrm.66.1678612069275;
        Sun, 12 Mar 2023 01:07:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1678612069; cv=none;
        d=google.com; s=arc-20160816;
        b=CmVFCy+ywlDxCfbNQGZqlVBhFoXp7Fi0o9wZMEg+xjc39gPrR9/wpwKBAsoDUkrsn/
         0kDOz1QTGdzt8UpyoFjmh+dymOi/5rNLL+pjEQaJ+WR+baiwemXl5cKBnGHhFGoqoUJC
         wvwTZ27PPaZZDNlKu0tQrj8MU4hy/pLLGe3dSwWQAfrnMQ12+o5Yai1Go+XU8DlXtwMG
         CNYsaMNMGzHeaqn6S9fG7T8fWz7YJ0x4M+4fWLGeqJI9GQ05b420nWwJnQsEFVQfhOqL
         yl9zRs73/W0v3y90U5ZZ7joofAfdCQbGd9dVFLNAtfrPKUllmjZ6G8VSFukpb8a8rXbJ
         atXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=8LH/M3cso09ywcoLugxoDXWjh29NuaE9CRH1ycId3RM=;
        b=Rluca1B72IKfQ8dSsAYppzNf6mWTXlyt2THDfdnTpUACF738WAP10Hc1sqsHS9kOmJ
         vLRw3Fnv7tFhSD+dmJCHf3QYFjpuuppSOISE3z4yxJHdL6rmN7+7knlKykc6jEoEasBh
         WAAD89DUuU0LjCTfmaI4KiF8QM2ZE86fS2agA4L/sZ62oThsSscxKXH65iJ7+4KEYesh
         IztVDIWZ35b2UZFQcTFTn1LEvId90t8qw8FQDobOO9tEDIPK5cU9r34qIF7uv+RnCmwm
         fQbP+t5jb8nozxZzYL3rrnS7GgNw+SBQosJT+I668pLLyzabfeHGg2fzftEOGFeQ2ahK
         4Tvw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=RQ11GhX4;
       spf=pass (google.com: domain of yaro330@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=yaro330@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id y16-20020adfe6d0000000b002c57f887180sor1280997wrm.21.2023.03.12.01.07.49
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Sun, 12 Mar 2023 01:07:49 -0800 (PST)
Received-SPF: pass (google.com: domain of yaro330@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:adf:da45:0:b0:2ce:ad08:ca4 with SMTP id r5-20020adfda45000000b002cead080ca4mr538188wrl.35.1678612068824;
        Sun, 12 Mar 2023 01:07:48 -0800 (PST)
Received: from localhost.localdomain ([84.32.202.14])
        by smtp.gmail.com with ESMTPSA id e29-20020a5d595d000000b002c5706f7c6dsm4506372wri.94.2023.03.12.01.07.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Mar 2023 01:07:48 -0800 (PST)
From: Yaroslav Furman <yaro330@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: yaro330@gmail.com,
	Alan Stern <stern@rowland.harvard.edu>,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org
Subject: [usb-storage] [PATCH v3] uas: Add US_FL_NO_REPORT_OPCODES for JMicron
 JMS583Gen 2
Date: Sun, 12 Mar 2023 11:07:45 +0200
Message-Id: <20230312090745.47962-1-yaro330@gmail.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <ZA12pMgwA/8CguYd@kroah.com>
References: <ZA12pMgwA/8CguYd@kroah.com>
MIME-Version: 1.0
X-Original-Sender: Yaro330@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=RQ11GhX4;       spf=pass
 (google.com: domain of yaro330@gmail.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=yaro330@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Just like other JMicron JMS5xx enclosures, it chokes on report-opcodes,
let's avoid them.

Signed-off-by: Yaroslav Furman <yaro330@gmail.com>

---

V3: Moved the code in the appropriate place, after the 0x0578 device,
as pointed out by Alan Stern
---
 drivers/usb/storage/unusual_uas.h | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/usb/storage/unusual_uas.h b/drivers/usb/storage/unusual_uas.h
index c7b763d6d102..1f8c9b16a0fb 100644
--- a/drivers/usb/storage/unusual_uas.h
+++ b/drivers/usb/storage/unusual_uas.h
@@ -111,6 +111,13 @@ UNUSUAL_DEV(0x152d, 0x0578, 0x0000, 0x9999,
 		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
 		US_FL_BROKEN_FUA),
 
+/* Reported by: Yaroslav Furman <yaro330@gmail.com> */
+UNUSUAL_DEV(0x152d, 0x0583, 0x0000, 0x9999,
+		"JMicron",
+		"JMS583Gen 2",
+		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
+		US_FL_NO_REPORT_OPCODES),
+
 /* Reported-by: Thinh Nguyen <thinhn@synopsys.com> */
 UNUSUAL_DEV(0x154b, 0xf00b, 0x0000, 0x9999,
 		"PNY",
-- 
2.39.2

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20230312090745.47962-1-yaro330%40gmail.com.
