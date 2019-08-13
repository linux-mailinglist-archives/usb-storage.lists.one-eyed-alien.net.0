Return-Path: <usb-storage+bncBDMYPB44VAFRBINHZPVAKGQE5OFI4CI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x745.google.com (mail-qk1-x745.google.com [IPv6:2607:f8b0:4864:20::745])
	by mail.lfdr.de (Postfix) with ESMTPS id D5DAC8BCCB
	for <lists+usb-storage@lfdr.de>; Tue, 13 Aug 2019 17:13:38 +0200 (CEST)
Received: by mail-qk1-x745.google.com with SMTP id e18sf96533461qkl.17
        for <lists+usb-storage@lfdr.de>; Tue, 13 Aug 2019 08:13:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565709217; cv=pass;
        d=google.com; s=arc-20160816;
        b=Acnfb/ffZkOM4YOPQYS3wF4GLnmrs2pFQRwfjauqY8XLSEx639GJvsnc66MeCGqpLg
         jvbao5RCIb2iugOtCwBMSB9nx6ef1Y3Pr5lym4cgs3J/XjEgkd7vUb/GclIKkS2nNfyH
         v1wozlhwDFjQ57wpRIh1fPaYx4MAnBZMviNUnvdsxb1U4ZuVfuBp6dMGz5fQIxMQjR+J
         uDHYYeh0n+DHyZiIwNXV5AOFWXi+rCG+lDXBaFKco4ffHqv7zJ8ki7f7j74C84Evp5DB
         nfJ/6872AeStZM00MqWiXJb2d8PaBUpwhSsKYQ4MYVLGF6LLq7M4SUYvsfHew5weDKFg
         Rnag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=I62H4vnF2l+9cJoWt3ri9eJFkYkiZSarmDYiduPlEYc=;
        b=03JvbD+ewU7MJtltnGJ4UGXyHkx642B/BfU+Ii7EfPOL4jnlNCll/q1a4Mgu7T7Lbj
         QvDhEnSXtLUsyNUzGXOOrfJ8ilQvqsLwLzNiKl1bPVKWglj6+KB5+HzCyGYvENG5aUKQ
         y/7V4VsEikCWvI8/5N5R7UPdI4S/rV5pZVuZWN3d5B41hzi9k4gLj4jMkBtkJOD2lv5R
         atfiVlIU0hAJNmLHt0GOn1rKxeyucSfg/dB7Y5SREDnwxy5wNhab6uMP8MsEwYNfl+Hj
         AulSRwufNj0SO3r+izzygBX0hHN0ggpaej+qwf6hXK4xNAs0GXoN0Q14XwfRtGjWOl9n
         7mlg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="Ev/tJDUd";
       spf=pass (google.com: domain of 37kpsxqgkah0nbfoojdihpphmf.dpn@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=37KpSXQgKAH0nbfoojdihpphmf.dpn@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=I62H4vnF2l+9cJoWt3ri9eJFkYkiZSarmDYiduPlEYc=;
        b=EZnycVUe+rSpuhGFoyXldiYIeIk7cxP920deg7s3PGFRSD1CXYi2Mk1W+xaZQKH9Fe
         AO2sV29qmjbf/Y6Z6FWh7x/Dvkkk0y2kCExIHnLRc1YYoxrF3ejRwrMDGd9R8bYXDQQP
         pxfz5wncfZIQLq8hHbUbjqfjDFbNAC/cWYJoM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=I62H4vnF2l+9cJoWt3ri9eJFkYkiZSarmDYiduPlEYc=;
        b=NoaOT5BKo3ikI1rkpIWEBTTJBUWSsU/3mXGZQCfKed9X4gYZMNdz2scrHmFVKX1dF6
         wDJOd/uQ4bykVmR8gXmfBePKnfIpx+LVRLQhigABmGi+bxNUaqEmRJ0A0MJK1o3GKh+F
         gqQc4vic0hkM05JgU2G7B+F9jgnWcSWpMZAMXU9dIfsyyPKQ6GC4eo547p9BLJDUgo/s
         KWU3Crse0xHcuUa35/7xR4luj1qbqIiOABZVDi2IuxkUPkQXFpFI+Vdb0upaCtMVOeXp
         RTFAyiMrtar5akAt9z6KGMOLP0kWAPOsRjL5cbodeJXFPmRK/0daVliNv4BopiePo+WK
         XFEg==
X-Gm-Message-State: APjAAAXtMjHRV6wxzR9LQUrgkXtRk8RqarQWxpld3PFw1fbdlq3zU5eD
	3Lk49ARyYIryUHUEY9eseg3moQ==
X-Google-Smtp-Source: APXvYqx+icbuZ2UMdnQckU83O5pjAVfpq6SS04iIkCvG8MdZpJXT4mswsCK1gsljTvZH8oBm4HOQcQ==
X-Received: by 2002:ac8:3933:: with SMTP id s48mr35226173qtb.232.1565709217705;
        Tue, 13 Aug 2019 08:13:37 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:aed:32a4:: with SMTP id z33ls3678114qtd.13.gmail; Tue, 13
 Aug 2019 08:13:37 -0700 (PDT)
X-Received: by 2002:ac8:4a83:: with SMTP id l3mr18784519qtq.46.1565709217456;
        Tue, 13 Aug 2019 08:13:37 -0700 (PDT)
Received: by 2002:a37:a54e:0:0:0:0:0 with SMTP id o75msqke;
        Tue, 13 Aug 2019 05:19:57 -0700 (PDT)
X-Received: by 2002:ac8:1017:: with SMTP id z23mr9268320qti.57.1565698797488;
        Tue, 13 Aug 2019 05:19:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565698797; cv=none;
        d=google.com; s=arc-20160816;
        b=pcYCrXSIeT6dfg7GjCv66ft1XbTPGDnh6zeOt0ZLslyGVRUgcKOZlUFhOVZ3MQzuMr
         8ejBmclmwcZTlfSvDlq1+y00I841TCQhhYwGtaqYnN/jzyBbswyZ9bfAn0s1hSyO3rPW
         APXJy8sktq6yNqpLAgXa74O0K1MTBpqE2WZkxq5JLM+Fju8EiunnIw2DqSTgLP6h8GUR
         6H/QEJXSpDo/rNAHMpaJjI0UtmhuRgOk4oFnTYTUzCpxWMJiEwRX9l9iGC8CKvxYdUJl
         9PsTwks3Cml5noZPSIcgHiZGRksjU0ZBKewXyvkydlr4OYLsbI8AXeNtn+kWkHv7Q84R
         jaYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=1sx6hDgzysYx+a29qVca5WMwZUe5jwQTperKXSLoylQ=;
        b=PPGLjADgNGSBKp4nZrB8FPqjw1+oDhRxziTxRb/NNdPZ3LSN5TM8R4FxTX/ElWGMCR
         GXHijsm3KqYjo4VvGefcsPz3EwBGB7IIlj3+xsqaKp5cNWAzkdXCnRQ/o+oTKyvgn5Cg
         akzsiuuW6oqFz9fwmW7cxfj2URHF1zhs06SdhNi0gttRX2n3O7n8kD2AKV5IEPhySZdv
         i+1fLXo4RyYpkYWkGO2IYodK2sTHEHj/oPfYzXQk3D4oazD5KOOrCfG/BlvV8uoSCNSe
         SpN7IIkDfvrbJhO3oC/2SKMqghSywpdPk8Lfr0pUTg4UOSTC8HcYfeDTP5pz0x/zkGt2
         eaOw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="Ev/tJDUd";
       spf=pass (google.com: domain of 37kpsxqgkah0nbfoojdihpphmf.dpn@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=37KpSXQgKAH0nbfoojdihpphmf.dpn@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-sor-f73.google.com (mail-sor-f73.google.com. [209.85.220.73])
        by mx.google.com with SMTPS id b16sor15188999qvi.12.2019.08.13.05.19.57
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Tue, 13 Aug 2019 05:19:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of 37kpsxqgkah0nbfoojdihpphmf.dpn@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) client-ip=209.85.220.73;
X-Received: by 2002:ad4:5242:: with SMTP id s2mr3907894qvq.129.1565698796953;
 Tue, 13 Aug 2019 05:19:56 -0700 (PDT)
Date: Tue, 13 Aug 2019 13:17:06 +0100
In-Reply-To: <20190813121733.52480-1-maennich@google.com>
Message-Id: <20190813121733.52480-10-maennich@google.com>
Mime-Version: 1.0
References: <20180716122125.175792-1-maco@android.com> <20190813121733.52480-1-maennich@google.com>
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
Subject: [usb-storage] [PATCH v2 09/10] usb-storage: remove single-use define
 for debugging
From: "'Matthias Maennich' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
To: linux-kernel@vger.kernel.org, maco@android.com
Cc: kernel-team@android.com, maennich@google.com, arnd@arndb.de, 
	geert@linux-m68k.org, gregkh@linuxfoundation.org, hpa@zytor.com, 
	jeyu@kernel.org, joel@joelfernandes.org, kstewart@linuxfoundation.org, 
	linux-arch@vger.kernel.org, linux-kbuild@vger.kernel.org, 
	linux-m68k@lists.linux-m68k.org, linux-modules@vger.kernel.org, 
	linux-scsi@vger.kernel.org, linux-usb@vger.kernel.org, 
	lucas.de.marchi@gmail.com, maco@google.com, michal.lkml@markovi.net, 
	mingo@redhat.com, oneukum@suse.com, pombredanne@nexb.com, sam@ravnborg.org, 
	sboyd@codeaurora.org, sspatil@google.com, stern@rowland.harvard.edu, 
	tglx@linutronix.de, usb-storage@lists.one-eyed-alien.net, x86@kernel.org, 
	yamada.masahiro@socionext.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: maennich@google.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="Ev/tJDUd";       spf=pass
 (google.com: domain of 37kpsxqgkah0nbfoojdihpphmf.dpn@flex--maennich.bounces.google.com
 designates 209.85.220.73 as permitted sender) smtp.mailfrom=37KpSXQgKAH0nbfoojdihpphmf.dpn@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Matthias Maennich <maennich@google.com>
Reply-To: Matthias Maennich <maennich@google.com>
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

USB_STORAGE was defined as "usb-storage: " and used in a single location
as argument to printk. In order to be able to use the name
'USB_STORAGE', drop the definition and use the string directly for the
printk call.

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
2.23.0.rc1.153.gdeed80330f-goog

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190813121733.52480-10-maennich%40google.com.
