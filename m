Return-Path: <usb-storage+bncBDMYPB44VAFRBL4DXLVQKGQEXXLE4EY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-vk1-xa48.google.com (mail-vk1-xa48.google.com [IPv6:2607:f8b0:4864:20::a48])
	by mail.lfdr.de (Postfix) with ESMTPS id 68B8EA6C3C
	for <lists+usb-storage@lfdr.de>; Tue,  3 Sep 2019 17:07:28 +0200 (CEST)
Received: by mail-vk1-xa48.google.com with SMTP id l7sf7886106vkm.21
        for <lists+usb-storage@lfdr.de>; Tue, 03 Sep 2019 08:07:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567523247; cv=pass;
        d=google.com; s=arc-20160816;
        b=TJMEDAEIp2PAS/rA8DmuCQRCJH+qFonAEbTzq5HlPrY7/ULdpdENSzJZulaW4H4O3b
         KnwbEXPwoM0UDCQTCtlPE37aPAeBsjbA+4SC1LXqE1GmM9Ko5nphOjUj40G8KO1XGwBs
         TpRKNGTzh2bPjxPQBFpIwq2dl3POk1pdlt1GDHxxOPENhcDVBEYPjJIAn65G+jG+NzDN
         xFZ50mXgxTp836UKKnwMi3LamGQa67UN1SaLbjZ7AxyI2nuYWODax9hal4gZrQtD362F
         xZDDNz586ptdIQ1V4FCBpayavf2yOQaSAVeyMTOFEZDenc5ZqJKkpPuyBmORWTCbWAbC
         nqNA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=A7mNW7E1oix9Sh950AMyr/ntQWATf5QKOQAmCs6aZaw=;
        b=jdjumx1ykzo1PkXv4de+YtpTSzsNajuXl+gBG+4sLzLpAdmWlUD+AE3/BGxDFwPvfP
         XaeejfArztQ7jGmr9Yf4EfzWXz+XIsaqOikvQIDDdM9EVz4+0Be7epD5Q2mYomEGsZnO
         ECiExZd5+8doZSSUxrT/R3R7BvBiBYGHzlAT9oSya2yk0UuoPhRvtEL8GsjfMXtJtMfk
         yBVBj2QfPttQkkUUajUY8C0WNYWtkDfmKEXajriOP07polbn2TNg/NdkOp/sDQ/l5WFL
         YcCLht5AP9UfVmLVIlb2N8yWCbAyNjGAJz0EMBAssrgTiGg7/b6cDQh+PjnMSWh3MnpM
         1hqw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BYUxI3Mr;
       spf=pass (google.com: domain of 3rofuxqgkaf0h59iid7cbjjbg9.7jh@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=3roFuXQgKAF0H59IID7CBJJBG9.7JH@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=A7mNW7E1oix9Sh950AMyr/ntQWATf5QKOQAmCs6aZaw=;
        b=j2+pSZIDDiJ1Y9IXjpqqQ2Mun9lEhYAcBTy1EaTxY4kya5QMeE2Q07+JwfTwh96SxB
         0s5HSGlq9A1GWrvH2lUZIP1D5buisIoaB6qsdX5kSJvVCRBlEJFcD6pnj6ITtFfPXM1r
         3ijJBHv/eZ+I2oJhzS4Df47RFNVsZLN9IViU4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=A7mNW7E1oix9Sh950AMyr/ntQWATf5QKOQAmCs6aZaw=;
        b=gaN8aY/eQbpnC+B0vAk7Dsy8c4qluCnLWpMZCEIqyX1teo6z56epfG0qTBKPo8fdil
         oSMGHpTDnDL4N7d4VV/Pxz3RZLE/i9oGir0u+1Lq36PTn4vnThjFm9jyjqPqohYaTqy0
         lRWU0/Rw5wYV/9e1Tq8s4OWULkULcywqiD8DlEi3GEzw7O371w0xLs40kMpphmCtaXRa
         zPar0BTHpirpAnl6veGJvDDs4Zmehr9AVaz2FrVAlTHL7TgGrBnrU9xR8ELDQuefIimE
         BaqDQGamxBzSAbT8mmTs1epg3ZdxD/4VNDEg0KPa1BJaH92M408TIsENvKCfyOIhGi5h
         PvDQ==
X-Gm-Message-State: APjAAAVKVQ+0J9NsD+pt60KgqipvkyzXHC6+1OPMsVJe2s+AhormXAzd
	pH3uj9mMmkneuk3txWnjCH3VHQ==
X-Google-Smtp-Source: APXvYqxnQb/N7mDk6GmvizMvB0t4EwO9Xc9h9ieSA7m3u6YgOmtwDMGSnpGGc8sZB67nbGsEPGYdMQ==
X-Received: by 2002:a67:e3cf:: with SMTP id k15mr19062013vsm.60.1567523247285;
        Tue, 03 Sep 2019 08:07:27 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a67:f2d3:: with SMTP id a19ls608158vsn.10.gmail; Tue, 03 Sep
 2019 08:07:26 -0700 (PDT)
X-Received: by 2002:a67:fd97:: with SMTP id k23mr18883630vsq.179.1567523246940;
        Tue, 03 Sep 2019 08:07:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567523246; cv=none;
        d=google.com; s=arc-20160816;
        b=r0mf9lVpqPbXOnKcy0aiJcnRHMw5IfUpqZuVksVuw3/jIdC3pZNuixvPG8jFTfRolV
         AbCM8IXAIPLwA15CamPS0PgIL/rl+S6hXfEYocs7/6AmTLrTakjwv9iuQ2Vc+UEVbxsf
         BItefU9W2MzQH6sc018hehES6lZTxqlWcBXSuNnI2IRnQnQxg2alyVALO3qd4PBLXV9L
         FpkfY7QS2Gb/R0TDfqLoOh/CAQAY/vkl4XiT3sQz1TvD2nwxvaQl6CV5kd912ykUOzM6
         3ZQ3glxTeSBIjbCPST67JzwBTlHev8C4IxsDgQ+ty2UWyxbfw/iUSHiab7mSypkTRU8k
         j1zA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=XfkuPAzUg0cWTsSII8UxfvUGODgh66Dt0PdffmfP8ds=;
        b=HvxvbY9GFNtAuBmtF0Y1UEkgpqrrQHfOhj3kKqed04K/JFnbV6BwY2oXo0q5vQjQRL
         QD2KgIGSDwPrzJ0NsnMPtqHQmcSTtYXMw71srM/oPRj94yIszj0cXiEk5KmLfIPjgh2l
         IYZ1lGTS584AorIlk496/hLFW+9rEBHRjiVKk943Sbg3rYyGQ9CpYSsNe2sRA6eL1D+c
         kQYtWpY+gE8Kp7TkNvaHVzTwHE8b7YFUp02FXq8Wa/Bo3goJIPYVTTC+4PxgorcL80+1
         mMW3s+o4TjT5sdBUIc+9YqEYnLneCLjduspT5Kmj/TgrClHGk4m2v4ImhLUn+1wYypY5
         gPXw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BYUxI3Mr;
       spf=pass (google.com: domain of 3rofuxqgkaf0h59iid7cbjjbg9.7jh@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=3roFuXQgKAF0H59IID7CBJJBG9.7JH@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-sor-f73.google.com (mail-sor-f73.google.com. [209.85.220.73])
        by mx.google.com with SMTPS id s6sor8942331vsk.4.2019.09.03.08.07.26
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Tue, 03 Sep 2019 08:07:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3rofuxqgkaf0h59iid7cbjjbg9.7jh@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) client-ip=209.85.220.73;
X-Received: by 2002:a67:fb90:: with SMTP id n16mr19342370vsr.7.1567523246431;
 Tue, 03 Sep 2019 08:07:26 -0700 (PDT)
Date: Tue,  3 Sep 2019 16:06:27 +0100
In-Reply-To: <20190903150638.242049-1-maennich@google.com>
Message-Id: <20190903150638.242049-2-maennich@google.com>
Mime-Version: 1.0
References: <20180716122125.175792-1-maco@android.com> <20190903150638.242049-1-maennich@google.com>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
Subject: [usb-storage] [PATCH v4 01/12] module: support reading multiple
 values per modinfo tag
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
 header.i=@google.com header.s=20161025 header.b=BYUxI3Mr;       spf=pass
 (google.com: domain of 3rofuxqgkaf0h59iid7cbjjbg9.7jh@flex--maennich.bounces.google.com
 designates 209.85.220.73 as permitted sender) smtp.mailfrom=3roFuXQgKAF0H59IID7CBJJBG9.7JH@flex--maennich.bounces.google.com;
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

Similar to modpost's get_next_modinfo(), introduce get_next_modinfo() in
kernel/module.c to acquire any further values associated with the same
modinfo tag name. That is useful for any tags that have multiple
occurrences (such as 'alias'), but is in particular introduced here as
part of the symbol namespaces patch series to read the (potentially)
multiple namespaces a module is importing.

Reviewed-by: Joel Fernandes (Google) <joel@joelfernandes.org>
Reviewed-by: Martijn Coenen <maco@android.com>
Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Matthias Maennich <maennich@google.com>
---
 kernel/module.c | 17 +++++++++++++++--
 1 file changed, 15 insertions(+), 2 deletions(-)

diff --git a/kernel/module.c b/kernel/module.c
index 9ee93421269c..3ee507c0a92f 100644
--- a/kernel/module.c
+++ b/kernel/module.c
@@ -2481,7 +2481,8 @@ static char *next_string(char *string, unsigned long *secsize)
 	return string;
 }
 
-static char *get_modinfo(struct load_info *info, const char *tag)
+static char *get_next_modinfo(const struct load_info *info, const char *tag,
+			      char *prev)
 {
 	char *p;
 	unsigned int taglen = strlen(tag);
@@ -2492,13 +2493,25 @@ static char *get_modinfo(struct load_info *info, const char *tag)
 	 * get_modinfo() calls made before rewrite_section_headers()
 	 * must use sh_offset, as sh_addr isn't set!
 	 */
-	for (p = (char *)info->hdr + infosec->sh_offset; p; p = next_string(p, &size)) {
+	char *modinfo = (char *)info->hdr + infosec->sh_offset;
+
+	if (prev) {
+		size -= prev - modinfo;
+		modinfo = next_string(prev, &size);
+	}
+
+	for (p = modinfo; p; p = next_string(p, &size)) {
 		if (strncmp(p, tag, taglen) == 0 && p[taglen] == '=')
 			return p + taglen + 1;
 	}
 	return NULL;
 }
 
+static char *get_modinfo(const struct load_info *info, const char *tag)
+{
+	return get_next_modinfo(info, tag, NULL);
+}
+
 static void setup_modinfo(struct module *mod, struct load_info *info)
 {
 	struct module_attribute *attr;
-- 
2.23.0.187.g17f5b7556c-goog

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190903150638.242049-2-maennich%40google.com.
