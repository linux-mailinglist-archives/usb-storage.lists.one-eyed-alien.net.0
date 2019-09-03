Return-Path: <usb-storage+bncBDMYPB44VAFRBSMDXLVQKGQE4KLDTVA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x848.google.com (mail-qt1-x848.google.com [IPv6:2607:f8b0:4864:20::848])
	by mail.lfdr.de (Postfix) with ESMTPS id AEAB1A6C49
	for <lists+usb-storage@lfdr.de>; Tue,  3 Sep 2019 17:07:54 +0200 (CEST)
Received: by mail-qt1-x848.google.com with SMTP id c13sf2657930qtp.21
        for <lists+usb-storage@lfdr.de>; Tue, 03 Sep 2019 08:07:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567523273; cv=pass;
        d=google.com; s=arc-20160816;
        b=DhttmBr8f2964lmvsNzedyN/x/v+nxsTwC78nhRqT4UwjExncnAoVyzE7WQCgkYOH3
         Nolz8pbY9thlH+lADQwWP+eyDeLzDojeD2HfbrLmyNg1kw2fHMlD3sdX/m8YqvGzzXH5
         rQVNJDZs+GJsNiiktoECSYtTz8cf56aNRtVqTICGFDvtXTiF9dultTDrda4tnSLdBaYq
         XlXN2/gw+z/fOb3IR7Vs1AV6mk2cB668hlTnvkgwghy0Hy7u3ixb6bpsN1BDpPkgY5t3
         vzRC/lGwfYguLxhiPExwxs+j08Gz/Dvidw840trSHT6ZYO9OFRz6BaE6o9apjud0rSMM
         5yAA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=myj35VgGOhN91L+ltAPVQwDnRE/in7J8SblVWxAIaGE=;
        b=CHdtV5mXnVql/PBG+2W2cK7sYEnCTLV5c0uCC0dGo6iRPuPCX0fsPjJJW9zwNESKxY
         HkVOm+EL7v63p9nERFDeyKqqL/fJjKArNlXaYN9FfzxKmcudM9GYeuSTwRTCUlK+57cw
         jlAYAwgCJfVNVjOBiSpoLGxXBq5iFJUTN035tPmztdqxGDCRsLFjxdxpyqDNqjFylRjN
         mtHIrlKz5haNSjVDHAmOFmn1EJY8sTFt/1LPsEJ46ZdogIMig5jxs5qYKEWuQKTdIZWT
         HXzC7JTqBgjw9180vh3w5DjbbEzNzB/P3DALw6pz3dHj6qC59JvThUeqma488KkC3olQ
         iFgw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=EFphzrlX;
       spf=pass (google.com: domain of 3yyfuxqgkahgiwajjeydckkcha.yki@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=3yYFuXQgKAHgiWajjeYdckkcha.Yki@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=myj35VgGOhN91L+ltAPVQwDnRE/in7J8SblVWxAIaGE=;
        b=Jy+b1tjaBTlBQuuN3vG4sJu1Ix5nyRpe66o49f5Pv4iG0Gmvw+1VjchF4GVyyeUSUJ
         AzdOsVTqLDXivtHHohNP4YGrwaHUtjVo24rmjjIFSLDr+1hqCzywKqF3g6H+wiaRZH1x
         YVOYm8k7+1CCy+Um1Zz8QWAEyx1vGUUlZ9QHI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=myj35VgGOhN91L+ltAPVQwDnRE/in7J8SblVWxAIaGE=;
        b=raTI+JDMJCg7P6ObbSK/rewovYRc8EXSMHtFqVYeIg90A6EHwHK0BYr/1M/I0Dtjq2
         5f0UCoVA4OvyLARXRTd5DQRj91wMC+OxJfexE1l5xK1bEBkO3b1wgNpocKnJ7aQWeRCE
         2wF/M8krvXKXG04sdSxRj4M/ZSNukXbHcQrSVKSnc5ideJYfF0sw74lYzz8rC3EHn9Vw
         6JbxqVIzs6hBY9q8Z0RVwvJXK3ilpVb2JIhrp8+eaefYrkeGMOO8poiaY2McuhnPLcbb
         ry1xSqXvZqSI9vwitMT1NcraCb2iV3bGs1Y3Ts00sHFpXrEyvqppSyJirypUesQmHzi8
         17ww==
X-Gm-Message-State: APjAAAW2t29sDRXIAeknQWp9JO5avmR4ckLH63nXgJBbiOzNXxR5pVee
	cdfFbsoS66Y1MZ4FJPAFc1UszQ==
X-Google-Smtp-Source: APXvYqwe5kughbKIDf/gwpEtub1tfKH1DpmGqXHkPbK8OoGlCoiM0qfyihpY7OsEfEHgKXUSjkXZxg==
X-Received: by 2002:a37:4644:: with SMTP id t65mr21731147qka.353.1567523273742;
        Tue, 03 Sep 2019 08:07:53 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:620a:129b:: with SMTP id w27ls5472836qki.1.gmail; Tue,
 03 Sep 2019 08:07:53 -0700 (PDT)
X-Received: by 2002:a05:620a:1661:: with SMTP id d1mr20711376qko.189.1567523273444;
        Tue, 03 Sep 2019 08:07:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567523273; cv=none;
        d=google.com; s=arc-20160816;
        b=b7u3rIQLw849xcHnUTTK/fPLuNKTiaqHxhBy24PM53FDuhyhc8REHWNENO3v8dXmbY
         7RcM6SvYdLyqlK9BCmZrNBbNTra5sfLfhaOP2I1lWSZkAbhj5PZXRrlgkFlMv+GxCS5/
         aIlJhmRe/bTaPQZhq1nNv386A+JGB0i+cydl/1Tymrm/CuFyi/zHdRfqSu9jdPs5/7Tt
         lte8mIEMMjhPteqCP6qw4M6vV7+EZ0JhNVr3JMCet8KB7NNWpWh0vEE0HiLXy9QhH400
         hvcqZH+2OdF6JMsMiFak1md2kE9Fbs0nNR1J1GgqykS8JjXDB+JsNcOt2ENJ9icVMQWG
         IU+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=zRWSVeb5W05ehvG18tGL2ilvhm06WavygbArZEKUTQI=;
        b=pCH6JXcya0YxvNPZs50pgVVtadG4pyu+D3O61yGfEAnPCOg70AMyt3BU2oARcTX1Xh
         iO76tpF5X3poy62lqLqeD7+vUFEqpeGJ4QIrmTVB1W20SvWDPsCFS7ssdEplVvYZpTjR
         oYQ+PtdvDpJaF3Rh8lJsJS33oLL3V7rd6SfIUR4BKQksD8VdKnwaY679UemuUzTm4eWw
         9bm83RznwZOlFsB+Lk3LESlM8rEiBBf56EOEc0Nlvp9t1u/9VNguaEQvuYcoiOqJlYE6
         U7P+T7agvylt6x+mE54v0izp2subZSgya61Tq5e0NVqw5XsVURY7Oj9zjtKq2TXpONGm
         qP0g==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=EFphzrlX;
       spf=pass (google.com: domain of 3yyfuxqgkahgiwajjeydckkcha.yki@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=3yYFuXQgKAHgiWajjeYdckkcha.Yki@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-sor-f73.google.com (mail-sor-f73.google.com. [209.85.220.73])
        by mx.google.com with SMTPS id i14sor23617566qtp.64.2019.09.03.08.07.53
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Tue, 03 Sep 2019 08:07:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3yyfuxqgkahgiwajjeydckkcha.yki@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) client-ip=209.85.220.73;
X-Received: by 2002:ac8:5296:: with SMTP id s22mr17672802qtn.139.1567523273051;
 Tue, 03 Sep 2019 08:07:53 -0700 (PDT)
Date: Tue,  3 Sep 2019 16:06:36 +0100
In-Reply-To: <20190903150638.242049-1-maennich@google.com>
Message-Id: <20190903150638.242049-11-maennich@google.com>
Mime-Version: 1.0
References: <20180716122125.175792-1-maco@android.com> <20190903150638.242049-1-maennich@google.com>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
Subject: [usb-storage] [PATCH v4 10/12] usb-storage: remove single-use define
 for debugging
From: "'Matthias Maennich' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
To: linux-kernel@vger.kernel.org
Cc: kernel-team@android.com, maennich@google.com, arnd@arndb.de, 
	gregkh@linuxfoundation.org, jeyu@kernel.org, joel@joelfernandes.org, 
	lucas.de.marchi@gmail.com, maco@android.com, sspatil@google.com, 
	will@kernel.org, yamada.masahiro@socionext.com, linux-kbuild@vger.kernel.org, 
	linux-modules@vger.kernel.org, linux-usb@vger.kernel.org, 
	usb-storage@lists.one-eyed-alien.net, linux-watchdog@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: maennich@google.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=EFphzrlX;       spf=pass
 (google.com: domain of 3yyfuxqgkahgiwajjeydckkcha.yki@flex--maennich.bounces.google.com
 designates 209.85.220.73 as permitted sender) smtp.mailfrom=3yYFuXQgKAHgiWajjeYdckkcha.Yki@flex--maennich.bounces.google.com;
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190903150638.242049-11-maennich%40google.com.
