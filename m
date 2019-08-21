Return-Path: <usb-storage+bncBDMYPB44VAFRBYHB6TVAKGQEL7VGCHI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x747.google.com (mail-qk1-x747.google.com [IPv6:2607:f8b0:4864:20::747])
	by mail.lfdr.de (Postfix) with ESMTPS id 171E29785D
	for <lists+usb-storage@lfdr.de>; Wed, 21 Aug 2019 13:54:10 +0200 (CEST)
Received: by mail-qk1-x747.google.com with SMTP id y67sf1837582qkc.14
        for <lists+usb-storage@lfdr.de>; Wed, 21 Aug 2019 04:54:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566388449; cv=pass;
        d=google.com; s=arc-20160816;
        b=b4GNnKTFHJ6rMFch0Bl61O9tFlgEmue0ESpCV/QlEQ0eHvc3ZSkFWTU2tuo9/Wwvmy
         O5ntRZ5+17k0ochi7vpYiESRdbN6rW5s6RfwJuZdqrwm4c41Yy8/iT/fGxBPDQWTJ3zI
         DYXRi+ZGDkm1bKvpRwnfWnSGs7TPtwRR4SD28HgDsrObS81FbyLz78fAZAHcVxGQmRBq
         Bz2SlaPvsaafWp4pUh1MTcNGdFo/YzpvMbgulrVmITDh0+46D3wicEigzW1XZcz9f9K4
         TLbVWxn91fcNLcT1o361aX4jYP/WVfJFRXh9ZKhWNrTCgxEZwqB1+3R3WnSHrECbQhxR
         5oew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=msJybeBtAf+ctGpI1V83+kbZPrDn/OSBc8kQE33NN94=;
        b=xY0jWvcK9TU8wE20xvBwg3+rZYUtwFUXwCNOmxZ72LLDzAX+FGIP+JK/dObQ4c9tc2
         TQT4GQyCBrF+vKOwl7Ztgn56zbNNz3XK+LL/AlJwsf2887Kv1VE1tZ/NeP/GnDoGyxE9
         3gAaXCXmyVAQNwVhi1FHt5rr3CdJB1ngRxQ0jbhFLPJYD+r7yF2a9E+QgeouVmtt5CRh
         WJyodMrac2VGC4xM73Niu3me6HlbTt4+easJC7cQWCTQr8UJ72lg8/Dk/3I02/j8912u
         Y3UekxbpvON0NMFCWC2I6wXupV5j5fYyTsQIYe4LnQba8I/xutrmQTe/cPkwI4PyiwjO
         JLJg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="LD/8CSp/";
       spf=pass (google.com: domain of 34dbdxqgkakcthluupjonvvnsl.jvt@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=34DBdXQgKAKcTHLUUPJONVVNSL.JVT@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=msJybeBtAf+ctGpI1V83+kbZPrDn/OSBc8kQE33NN94=;
        b=BRYzQw3IoCVoNrjPxfKkWp3OExZH/vN4uP97Z2YpBHG6Kwvk2B+yX5A9a0soEy2R2c
         1R6o2l4GOiitQEkUIX63SVPpb1R4BoN3YFpvwR+4XkhW7D1yrRQMRR0lqm47bOWRcbaU
         QuQeD6O7nnOyyM9Uh/nA3Ydlp4VFXWo66zbWI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=msJybeBtAf+ctGpI1V83+kbZPrDn/OSBc8kQE33NN94=;
        b=d7DWglMbjbODsZ4f1pD29ga2JRKjdus9O8looEoSdqMSSl3OcCJH0QB54+zEywppJk
         k7YdDDUvBempK4rR5XqlIll3+GD5hPY6rtyaPXqTiLdhcRmf0Yu7ieSyAzW+puVZrGNV
         I6cr3m8yIHtp+tBci4N+IfSKNcvFsfDSgOWbph7yh7drItwB+b4Q5EipHwaCidw2qjpf
         Zn2iaMcDtVB9c1Vsr3eLMMIEuf7cWUUEWjaQr/NqLj+WBM954hQQ+tayoO/4OK2+qw9m
         n0fIHKLnZX/WSEgK5XE3sKoIu86QMhLvoP/pi23uGl/YIGClxB9mbyyvMOo0fnk1g1y+
         T+oQ==
X-Gm-Message-State: APjAAAVtT5Iqh/G8wuajMcjsOXD8cAXThs7YA7/VB4Fp14RHQlCAhxPf
	ZXfpdIzIvYvQ6GaLokXEfW55Jg==
X-Google-Smtp-Source: APXvYqwl4NC99adTbQa7XYpSBmwnOFAXwZraiM54ODl0GM0ihGi0GwMp6ftNScGIOH0qKFpJxHJTkw==
X-Received: by 2002:a37:9303:: with SMTP id v3mr32042671qkd.369.1566388448979;
        Wed, 21 Aug 2019 04:54:08 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ac8:1e83:: with SMTP id c3ls296562qtm.1.gmail; Wed, 21 Aug
 2019 04:54:08 -0700 (PDT)
X-Received: by 2002:aed:2d67:: with SMTP id h94mr30079170qtd.154.1566388448685;
        Wed, 21 Aug 2019 04:54:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566388448; cv=none;
        d=google.com; s=arc-20160816;
        b=PzMC4dDLqbrlrMMwVZkvhR1gAMebQ7eRF00gkcnX7lTjfvwHu84x8r6TFhLBLhYqzb
         3B/HEUmfzERw8FeONyHXc5d2SnC3DUnMqGNBMfRywrzLr7+RmCFXygy0u3nBxnbTet0R
         MQNUW3VKna3iVYNJuA952lT+jOTcYWMKoIOU6bzYBo+88XRasCXlVKVQjvoyXSMToYqH
         z9P7ncR8/Smnx6jnMoeZ72UhwrqzUlE2dsZqTzfSnt8PcrTf8HxxfUJ2WyyUrUdEQ6cS
         X/ckBQYmea8eoLsnY8cr3jenn2KiU/01zGBMA6qYKrPRfC/4eyL6UkN6U+YMx+UliMzx
         L5Jw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=uOv8ZVUXw4B5LiGRR+kjcrlEBVKgrrvFGm/lppkYW7E=;
        b=XaCHEzhsauGwODy2JlDCSvAQyXM3+EWDGqgJ2WDLtizYXcgiTd1w9WTY5H0itfywDK
         0gBgJXVT4gTludkHA+/P6WT2tv2+wRiOfgYebFsBwV5hJ37QPlaW9ck6+2Rkm1scCoLa
         WVaInQhTE7woSWvBUh7dhEKPaOOj1V19A37PctU1sgocJiwKXUYaBASvEejJj95vAzqB
         Ji4Osnp8A02WSAp6eOeASmnTez4pgq4G9ltrn0xS+eMkJ7pwiQqlw0qTRw3Nxdcx7WTn
         gF5Mo2I6qNA/KYMyZDH6cWUCQig4GRUsegaMs53FFkBLkmTY9bDlv7EF5A+T0cHePYjF
         K0Sg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="LD/8CSp/";
       spf=pass (google.com: domain of 34dbdxqgkakcthluupjonvvnsl.jvt@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=34DBdXQgKAKcTHLUUPJONVVNSL.JVT@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-sor-f73.google.com (mail-sor-f73.google.com. [209.85.220.73])
        by mx.google.com with SMTPS id w37sor21234319qta.33.2019.08.21.04.54.08
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Wed, 21 Aug 2019 04:54:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of 34dbdxqgkakcthluupjonvvnsl.jvt@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) client-ip=209.85.220.73;
X-Received: by 2002:ac8:25f2:: with SMTP id f47mr30077518qtf.195.1566388448166;
 Wed, 21 Aug 2019 04:54:08 -0700 (PDT)
Date: Wed, 21 Aug 2019 12:49:16 +0100
In-Reply-To: <20190821114955.12788-1-maennich@google.com>
Message-Id: <20190821114955.12788-2-maennich@google.com>
Mime-Version: 1.0
References: <20190813121733.52480-1-maennich@google.com> <20190821114955.12788-1-maennich@google.com>
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
Subject: [usb-storage] [PATCH v3 01/11] module: support reading multiple
 values per modinfo tag
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
 header.i=@google.com header.s=20161025 header.b="LD/8CSp/";       spf=pass
 (google.com: domain of 34dbdxqgkakcthluupjonvvnsl.jvt@flex--maennich.bounces.google.com
 designates 209.85.220.73 as permitted sender) smtp.mailfrom=34DBdXQgKAKcTHLUUPJONVVNSL.JVT@flex--maennich.bounces.google.com;
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
index 5933395af9a0..a23067907169 100644
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
2.23.0.rc1.153.gdeed80330f-goog

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190821114955.12788-2-maennich%40google.com.
