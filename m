Return-Path: <usb-storage+bncBDMYPB44VAFRBZ7LZDVQKGQEAFHWJHI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-vk1-xa45.google.com (mail-vk1-xa45.google.com [IPv6:2607:f8b0:4864:20::a45])
	by mail.lfdr.de (Postfix) with ESMTPS id ACEA3AB5E1
	for <lists+usb-storage@lfdr.de>; Fri,  6 Sep 2019 12:33:12 +0200 (CEST)
Received: by mail-vk1-xa45.google.com with SMTP id y187sf2234287vkf.2
        for <lists+usb-storage@lfdr.de>; Fri, 06 Sep 2019 03:33:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567765991; cv=pass;
        d=google.com; s=arc-20160816;
        b=0iTLAt8jFwE64PRtoLl54QCexh0Is/277FDzmSCJLwMD0vtD+NFbe8mNJNbZNRZGmD
         QZ2Int4qKWVNYBIssBR7I6UlMjFq/mElw3CaFBKEox+v37iZYo4c0E2jwacuUKeQfYBb
         206BHUwAAzUGxsy2VYr+ZDtgqJYgSRcqpkG6gIvOx4X9VBcnKv8gk7L76nipZGwCnHVw
         dNa/WB8bRi8F2udMffJM/Gj4RSHV1KAtW9lb8BNUr3aksc0SS2n7UsYB70U8jhCr/C8d
         gDrH3s7HRkv+7cqcWfq5azBDwbh92LIB8ztnMYU3Sp774vHRT53VQtZa8t9DTumTWHFU
         WsJw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=9zCEyWrpmNJbgh2qCihWYaio6RTlz4dessZ7BQiTJqE=;
        b=huewmnDqii0lNvoy1lZED3WIVMxDAikgdKx6dNNlGYJ4EBfpalKzI4/9iD98SnjO21
         /C/HA89eTSH16RTXCz0GqTCRRtz+FmAFU3cOTp9f455fFJOKd+mA5y7fq+kdDoMVsAE1
         hfs+zCoU87VKVfo/RCy/J2TpILLBozc3g6ziT3eOTU/joshXAvCBrWP9V1Bwx+AZM1I2
         dDEVrB6mcMDFPmMWoLsCiK7J3fNi+SlY50aYfRtfYlBACLZtt5zlTFXwL5O19nP9+WG7
         67qWpB2tZzhETWztRnD3luk3NbjjRq0S6r0CMr/5IxXBk4a2a/xC17eUMrhZfzUfrfN/
         c7rg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=e7pIkQN5;
       spf=pass (google.com: domain of 35jvyxqgkaa0znr00vput11tyr.p1z@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=35jVyXQgKAA0znr00vput11tyr.p1z@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9zCEyWrpmNJbgh2qCihWYaio6RTlz4dessZ7BQiTJqE=;
        b=b6rQbqsRfRd9+SMg4tRdHWESxg4sdjB9ROFFOR0d+MgHa9gr8Dx4H2b938G12KohLB
         L97T0X7mNtfTz0beMt3eJsUvaTIg/m9oc3XvcQcGxzhjEXuMVMCnbQ4K7D7xbh/gdZJl
         hAg3AOgeViUhZ0GJt6a65lWnbw8cx5a6J1qDw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9zCEyWrpmNJbgh2qCihWYaio6RTlz4dessZ7BQiTJqE=;
        b=QF3oSYxwORF5PvZMcpn3mVtk3d/g0jDnWVBTDlO3L5nODKb/lyNkqSh40uHpNBcNLs
         bcnmKM+34WYoDWnjzZIiXnTchNkp8MbbnQUVxzwjs7XTQJxhxluuptot/wUAedDoukIi
         TpB0PZeeA5j6X9X9NoeG20c03jPoQOeMnpk0mVBVoOhDA3aRJmKm8gZO+HLvGVftCghq
         FWZjAhCGRertC64LRXpSwzjnSWUILSzz5L+0yXeqLoC0ur8AwQ3T+4N+Y/BHpgbPg95M
         Cr9GgmbNHcmut6pDStQFlp+R5Gq2WfVL9sl6LaQCQTe2qELUYCrIZKNKxW/UW4Cr/53b
         VpHQ==
X-Gm-Message-State: APjAAAVtf6JfM2j3dsOcX50y1elaa1NQCg+96DRKG51Z/9/Fg3ZZHvyB
	DzYJTA/aQoWw1LVtiUNGCh0QWA==
X-Google-Smtp-Source: APXvYqzEP4xLoJ1j7P41A6Ah48S1G+EYX9IXD0jOV3axz9xXop1NuYTputA6vcwdtzceXUdVhl7Nfg==
X-Received: by 2002:a67:f418:: with SMTP id p24mr4361169vsn.215.1567765991621;
        Fri, 06 Sep 2019 03:33:11 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a67:66c1:: with SMTP id a184ls575337vsc.8.gmail; Fri, 06 Sep
 2019 03:33:11 -0700 (PDT)
X-Received: by 2002:a67:fc12:: with SMTP id o18mr458223vsq.180.1567765991408;
        Fri, 06 Sep 2019 03:33:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567765991; cv=none;
        d=google.com; s=arc-20160816;
        b=uzAmS+Sq730ZfqZ+Ca2SPhmyGGrt/JG7W3doNWzQ8Rb3a0KMsUsZLfwGB1hbMsLuto
         a1JKTPXIPgF8l90bVvVB9wC/hGUPMCt0rG7TcNdMrZRFY6KhCVO70c/fQgkCvEUYkHjQ
         noXxQXShKfKEC8BCJ6QBveBL6DOZEhO65B4EK/4i34PLnX6HJIMtSx/4VXwV/Rbtfiw5
         Yexw9x+qfBaE2th+B8eMD9S3lYeJrIu6E2ACbtyZHKqJI/t3OqjbCTZym9ffL21Ljvl5
         mWl6836O+kgVg7W+JxorlBHfT8AFp5MhQRDmvGWT5nUG9WGosshOhRAFnAdqIAk9S1wz
         avyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=zRWSVeb5W05ehvG18tGL2ilvhm06WavygbArZEKUTQI=;
        b=dcD2OUSsdvhzxI7s8QVL8tyG6avtvQDtmL2qntpNzv4NQ+fSl0KkCQZTphz/mYWrDL
         Mn4/1JxtHvMqHqon2FIzH8rVLYHDcLbT89JUxc2aBTlFEuwdYNrlxsqkobSRqqEZC7yf
         8dTSu/WqISzkbXLmhHfByy2nEP0ElYOJORiHnoMvTwhVnskhMA00YgMC0eLSlMJUPbnB
         aMWzpqo4kMHy2MXqmWM4KdjMnIFXMTS8TjCCw69iPc5YPQ08nSByFLT8OAPQa/j7TzWA
         kqgRq80iWRKXzwHBkLmCYbgOmebKlTF35XskH/uM7IaB6o0q9f6dlqFw02mHQQGw0ieL
         2ULw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=e7pIkQN5;
       spf=pass (google.com: domain of 35jvyxqgkaa0znr00vput11tyr.p1z@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=35jVyXQgKAA0znr00vput11tyr.p1z@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-sor-f73.google.com (mail-sor-f73.google.com. [209.85.220.73])
        by mx.google.com with SMTPS id w20sor1414381vkm.29.2019.09.06.03.33.11
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Fri, 06 Sep 2019 03:33:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of 35jvyxqgkaa0znr00vput11tyr.p1z@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) client-ip=209.85.220.73;
X-Received: by 2002:a1f:db43:: with SMTP id s64mr3568270vkg.67.1567765990854;
 Fri, 06 Sep 2019 03:33:10 -0700 (PDT)
Date: Fri,  6 Sep 2019 11:32:34 +0100
In-Reply-To: <20190906103235.197072-1-maennich@google.com>
Message-Id: <20190906103235.197072-11-maennich@google.com>
Mime-Version: 1.0
References: <20180716122125.175792-1-maco@android.com> <20190906103235.197072-1-maennich@google.com>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
Subject: [usb-storage] [PATCH v5 10/11] usb-storage: remove single-use define
 for debugging
From: "'Matthias Maennich' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
To: linux-kernel@vger.kernel.org
Cc: kernel-team@android.com, maennich@google.com, arnd@arndb.de, 
	gregkh@linuxfoundation.org, jeyu@kernel.org, joel@joelfernandes.org, 
	lucas.de.marchi@gmail.com, maco@android.com, sspatil@google.com, 
	will@kernel.org, yamada.masahiro@socionext.com, linux-kbuild@vger.kernel.org, 
	linux-modules@vger.kernel.org, linux-usb@vger.kernel.org, 
	usb-storage@lists.one-eyed-alien.net
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: maennich@google.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=e7pIkQN5;       spf=pass
 (google.com: domain of 35jvyxqgkaa0znr00vput11tyr.p1z@flex--maennich.bounces.google.com
 designates 209.85.220.73 as permitted sender) smtp.mailfrom=35jVyXQgKAA0znr00vput11tyr.p1z@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Matthias Maennich <maennich@google.com>
Reply-To: Matthias Maennich <maennich@google.com>
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

USB_STORAGE was defined as "usb-storage: " and used in a single location
as argument to printk. In order to be able to use the name
'USB_STORAGE', drop the definition and use the string directly for the
printk call.

Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Matthias Maennich <maennich@google.com>
---
 drivers/usb/storage/debug.h    | 2 --
 drivers/usb/storage/scsiglue.c | 2 +-
 2 files changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/usb/storage/debug.h b/drivers/usb/storage/debug.h
index 6d64f342f587..16ce06039a4d 100644
--- a/drivers/usb/storage/debug.h
+++ b/drivers/usb/storage/debug.h
@@ -29,8 +29,6 @@
 
 #include <linux/kernel.h>
 
-#define USB_STORAGE "usb-storage: "
-
 #ifdef CONFIG_USB_STORAGE_DEBUG
 void usb_stor_show_command(const struct us_data *us, struct scsi_cmnd *srb);
 void usb_stor_show_sense(const struct us_data *us, unsigned char key,
diff --git a/drivers/usb/storage/scsiglue.c b/drivers/usb/storage/scsiglue.c
index 05b80211290d..df4de8323eff 100644
--- a/drivers/usb/storage/scsiglue.c
+++ b/drivers/usb/storage/scsiglue.c
@@ -379,7 +379,7 @@ static int queuecommand_lck(struct scsi_cmnd *srb,
 
 	/* check for state-transition errors */
 	if (us->srb != NULL) {
-		printk(KERN_ERR USB_STORAGE "Error in %s: us->srb = %p\n",
+		printk(KERN_ERR "usb-storage: Error in %s: us->srb = %p\n",
 			__func__, us->srb);
 		return SCSI_MLQUEUE_HOST_BUSY;
 	}
-- 
2.23.0.187.g17f5b7556c-goog

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190906103235.197072-11-maennich%40google.com.
