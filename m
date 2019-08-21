Return-Path: <usb-storage+bncBDMYPB44VAFRBEXC6TVAKGQETV2ES5I@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-vk1-xa46.google.com (mail-vk1-xa46.google.com [IPv6:2607:f8b0:4864:20::a46])
	by mail.lfdr.de (Postfix) with ESMTPS id 49DF297867
	for <lists+usb-storage@lfdr.de>; Wed, 21 Aug 2019 13:55:00 +0200 (CEST)
Received: by mail-vk1-xa46.google.com with SMTP id t205sf808735vke.9
        for <lists+usb-storage@lfdr.de>; Wed, 21 Aug 2019 04:55:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566388499; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZxyBWcSaHYJ8eX0FdY/dF5qq6QZf9nEliA65YQVOpzFbWOWtet7PK2upM9IP/osrhx
         5OGJ4Ht/BMoFSbHvY7QRPCX32dfNi8mR8tGe9VPLpAclKiouRGCM/OOMRzs3nEcfwR3c
         MlmDybBjsJaMdAB2ywouPUmfhgAofU4dL5C0dh+5OMVAo0okiTS/lQHwVkwxDYyR+Chx
         PIeoVxDrBljmDkwRzL7wvyCffheNU9Bqlwgg0gk3OhrQ3SGnGvEMj/WrsJ7IAqYkH2ZW
         9jep3Rvp9+6PQgmYUfMBJMMLvtDkXgfPosiIMroC7nfT3Nba7jzW2D6XkhUgdj3VyWRZ
         zxjQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=Ct3IOKy4CKM2eN7iXoMKVC6caAlePdMFNAO1OivrDXw=;
        b=lPBxVKDoPaq2by6AasFipxvjVw9gqK2U2pQZnnlYrC70aiLvVkk76f5iObGeG8p2Ld
         H6STPN+aeHNfelU5Z8KKFYs4MP0ZYDyqqawuxysDan6X6HTp40q9T/3kpcKv+kb+G2Ru
         haKiVCS81lKJFK8gUVYPOtdnURifBeRN9s2FigTGUtANCDfZ2h9ZFoyR0bZ7oLTMRjVZ
         JU4KpzuDwn0F4GmEqTU4US6Lr1mst0QjFVLT78hR5YBWoAzbyOnbhNSUu2wYVY0kR/AC
         QMsFskCWihafPiKX58vJmxFxHZZQbmTR3Q3YDujN7S26hzIQkwaZG0RtuFGe9LxXhw8y
         sqoA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=fvP4kpUi;
       spf=pass (google.com: domain of 3ejfdxqgkankh59iid7cbjjbg9.7jh@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=3EjFdXQgKANkH59IID7CBJJBG9.7JH@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ct3IOKy4CKM2eN7iXoMKVC6caAlePdMFNAO1OivrDXw=;
        b=W/npau4fWf9/1wCqZhLNtQHsDeFmd73DHmPc6VaDbxyrJ7WxNHc1ZnlRiVG04k+42l
         ItQlA97NoaNfry8n1xTv/9cTeLMK49ifUbWyG1YLxmJ5I4zKwUuPIUlEKhlC1vpv1PdP
         /oACASeYCJk0A9jeciMA4eoG5sx34aIM60J4c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ct3IOKy4CKM2eN7iXoMKVC6caAlePdMFNAO1OivrDXw=;
        b=MlF91I4hx0vD0l98KF44jXAxxyBjSM+788fVLZxejrwE+Mq+0SI5dtmQz2owS6ErpP
         PZbLF0E9gX/m38+Uv3n2pPnf26r203aw2TTFr0BiY+O0oLCI3hTeq8WZgWtyV19Jo4Qp
         LQ8VRzUiLAO7t3R798sJcXoT9qWXYKpAOiJEPJfuf7+7QujM7mJczoLaqjVPBMnMskcL
         1Z2wWZrXflbPZq5Y1bJs4Qmh0R7k1wdOaRr7aD7jCL2jGZ6mS/2XvY3+Th9yyapmLyRL
         oMMusClk2BqVDpkf6tE1qpCC2NVJcj29gYMZL8Tm7CZ4GSOKDU75kx4XWNF3JTDi0RwS
         Ttgg==
X-Gm-Message-State: APjAAAXzvrTUnEuYy3TwETrwcu9IinbqW8sxfdxbxPEXwCcyIhirQ5VQ
	bwsOMf3vWHE8Tg19iodhoZ/UUQ==
X-Google-Smtp-Source: APXvYqyem5MB2W00E5+Wmd74/mWGHtcxlAZ7PFlY+W/IE42pgjted7dZ1lpTKWdkiepbbopBQ+e28w==
X-Received: by 2002:ab0:1c0c:: with SMTP id a12mr2000047uaj.75.1566388499054;
        Wed, 21 Aug 2019 04:54:59 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a67:67c3:: with SMTP id b186ls215298vsc.13.gmail; Wed, 21
 Aug 2019 04:54:58 -0700 (PDT)
X-Received: by 2002:a67:d601:: with SMTP id n1mr20730024vsj.170.1566388498772;
        Wed, 21 Aug 2019 04:54:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566388498; cv=none;
        d=google.com; s=arc-20160816;
        b=w5kZmyu+ie5uf88X3IsoEvmOTiAmhwmEvV4006d6ToXB+RzlYuWaCnUPDuK7HS6uKM
         e3nVxE0Vvsru6nLfTODtsGDBGb4WVk3MefaS7Pkxl1W2r9jtqigA8Hze64bpQM8boDdo
         68iFnXoE8iPSP1h+XV6GMR+HeY/XNerHAkGzuCbcRAYMeMyVIya4UMSP/YAXOR9kzuRM
         nqtPqmdPsw2Jau8GcZmRyUjIt1igDzTVmVhhyKw25I2IupncHf/j0pujnN2x2UGGnY9Y
         cPWCDi4OWmLrI3bZ0OIhukImj6ur6LLBX9koeGWCGo1BG6HULhJVOjsWmBJz8nFEewJf
         SWvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=1sx6hDgzysYx+a29qVca5WMwZUe5jwQTperKXSLoylQ=;
        b=smq/plRqy7EEC4QC4JWJ405ZQZlmwvsJPo2oWn/E3/C/XxlaGAIcb7wTsk4HWl2lwm
         ZYn2SyKS0ZRw9HrsZjd9CdFDqw+Ryr8y2QByO6F6jA0xT34y9X47L1MdRa2y/wKR8GSX
         24yp+dYi6YKrm6kvcUkZWcBVG9WX7UaOoNzxW+wQz/3Pt8WZQL2WFV3F7dgYQ/E7RPNz
         yWP59hj2aOpSLEkudwHD7ykkqY9XGRZca8m/vq50uUAoxyyXum6xsSAt79S6MOwxR6me
         cPO1lcQqqwzcLCqd3kQTFMyRcMFkpo1o7M9H+FSo77Ih8SrYFxZzJbp9L7p3ao66yJ6V
         goNw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=fvP4kpUi;
       spf=pass (google.com: domain of 3ejfdxqgkankh59iid7cbjjbg9.7jh@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=3EjFdXQgKANkH59IID7CBJJBG9.7JH@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-sor-f73.google.com (mail-sor-f73.google.com. [209.85.220.73])
        by mx.google.com with SMTPS id 67sor7267702vka.70.2019.08.21.04.54.58
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Wed, 21 Aug 2019 04:54:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3ejfdxqgkankh59iid7cbjjbg9.7jh@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) client-ip=209.85.220.73;
X-Received: by 2002:a1f:db01:: with SMTP id s1mr5441690vkg.34.1566388498141;
 Wed, 21 Aug 2019 04:54:58 -0700 (PDT)
Date: Wed, 21 Aug 2019 12:49:24 +0100
In-Reply-To: <20190821114955.12788-1-maennich@google.com>
Message-Id: <20190821114955.12788-10-maennich@google.com>
Mime-Version: 1.0
References: <20190813121733.52480-1-maennich@google.com> <20190821114955.12788-1-maennich@google.com>
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
Subject: [usb-storage] [PATCH v3 09/11] usb-storage: remove single-use define
 for debugging
From: "'Matthias Maennich' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
To: linux-kernel@vger.kernel.org
Cc: kernel-team@android.com, maennich@google.com, arnd@arndb.de, 
	geert@linux-m68k.org, gregkh@linuxfoundation.org, hpa@zytor.com, 
	jeyu@kernel.org, joel@joelfernandes.org, kstewart@linuxfoundation.org, 
	linux-arch@vger.kernel.org, linux-kbuild@vger.kernel.org, 
	linux-m68k@lists.linux-m68k.org, linux-modules@vger.kernel.org, 
	linux-scsi@vger.kernel.org, linux-usb@vger.kernel.org, 
	lucas.de.marchi@gmail.com, maco@android.com, maco@google.com, 
	michal.lkml@markovi.net, mingo@redhat.com, oneukum@suse.com, 
	pombredanne@nexb.com, sam@ravnborg.org, sspatil@google.com, 
	stern@rowland.harvard.edu, tglx@linutronix.de, 
	usb-storage@lists.one-eyed-alien.net, x86@kernel.org, 
	yamada.masahiro@socionext.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: maennich@google.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=fvP4kpUi;       spf=pass
 (google.com: domain of 3ejfdxqgkankh59iid7cbjjbg9.7jh@flex--maennich.bounces.google.com
 designates 209.85.220.73 as permitted sender) smtp.mailfrom=3EjFdXQgKANkH59IID7CBJJBG9.7JH@flex--maennich.bounces.google.com;
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190821114955.12788-10-maennich%40google.com.
