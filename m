Return-Path: <usb-storage+bncBDMYPB44VAFRBINHZPVAKGQE5OFI4CI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x847.google.com (mail-qt1-x847.google.com [IPv6:2607:f8b0:4864:20::847])
	by mail.lfdr.de (Postfix) with ESMTPS id CA6C88BCC7
	for <lists+usb-storage@lfdr.de>; Tue, 13 Aug 2019 17:13:38 +0200 (CEST)
Received: by mail-qt1-x847.google.com with SMTP id i13sf4380199qtq.5
        for <lists+usb-storage@lfdr.de>; Tue, 13 Aug 2019 08:13:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565709218; cv=pass;
        d=google.com; s=arc-20160816;
        b=ReKzexByAf4OnnAAC6F8Uioth/qpjlItGYn3lYvVF0LHTtwpRj7RVW8wIwPdPe/T03
         G1czjSuGY0QTI0dVnWnqw7PHFhQKgp2cWvTQ3SNp5W/JzCeThxMTFKNWIRbC4TtTMFDl
         7CfGsoT1SeJUjWedBL/S86/6/ADkQB9Wcbut8N8m3fn4MzO5QXqCujycoXe7tHeFgH20
         lZFEjQO72Q+aDE65DjfWXIaSmqkGnWrN/SxlfCIL3K6Gt8+bwysaFlsO0mCHKKbSvly8
         9jCuVsvgkxdDVGIvdmjtl3GevmQMg4ICs6uelfguA4u0lgQxcGKdHYPm1xC19Z7zqg5I
         kIhA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=DtYSxA0W22+sRr4VYdF2uEP6I/M4ImtUTQFOUMvgvXE=;
        b=EVozjU8uKFE21NA4dYNa+TlKdwydW/kIw5kU5tgFCpXgSsROTy0lLWOYFILxp3uZpQ
         gSfBiE2xotm2Kbuz0yF2snw4zAuRXGzGlsCXpL/AmVJ2ct/vMwZe7s9i5/f+2yfeYBJ2
         2+WWpmK18K91MY0/r96m7WNU7LTYPPDCPEB1d1I/ZxYPIFekl9HmYuS3zuTLkqM/jTp9
         g/KErlTvHD/q02QMTXeI6ftPsA4oHvSxmObZzdCwelvIQQpuipbEtvUgU5eqqzIclejS
         2QPx+smxB6/kYxtMvvRyp/2jCrfi1EfiGgMXYWIdbKo4y+mumO7Nhr8LUabJjFdC49cT
         1gZA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Kj2QCgHK;
       spf=pass (google.com: domain of 3vkpsxqgkae01pt22xrwv33v0t.r31@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=3vKpSXQgKAE01pt22xrwv33v0t.r31@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DtYSxA0W22+sRr4VYdF2uEP6I/M4ImtUTQFOUMvgvXE=;
        b=DQjNc072oxQn9l2Ri6v/75fj49qqxwMM5a3Gk8X60+PEztpKTtqFy5KCfT0ziglbBs
         F9BXIKtNi/TxVvSms03KNPOIygW+8vWbc+Pi5qOMyuUXsPaxHJ4f3dNMyWSDLZTQOEVW
         5L9cedNFkSlDPnvRrecBO/J/rboD3M09KKjvc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=DtYSxA0W22+sRr4VYdF2uEP6I/M4ImtUTQFOUMvgvXE=;
        b=KRbxT+7FpcmJfeVvrjKol4PCfpwNZvKyRl8DulEcNYemuzkzvkXZbj3fegsHMxiNdh
         YNoo9HgrOBstPItiN+2nVKNPkMCty6zh3ei8m0JZHXPiAt8wnqhHu7EtdRxYIz26Hutw
         aS7piMwjC0LJms8waX42WTauH55eqSatAPLm70uTHTyCkrQnZ7Rj/Mwhd5tCEqlP0nyv
         i+Sli2Ag3jZvgkDu10NeFqoX/bqyYrMTPdD9CbftlxQBigC0/nb0Uu0xGv4eQlRn4YMy
         trSP+/ra73eCAL2hJ7Ci5pQTZejCg/ocDAt/V9JVAdsMC2GZumWsqNDaZDgWNBDbuq15
         ZyuQ==
X-Gm-Message-State: APjAAAUR1T4LWpl/X2WeM124ky8KM2/G0YfbORac4SFY00E3xFUcz8Fk
	w90oOC500HWbDMayNzbcSRd83g==
X-Google-Smtp-Source: APXvYqw3rVFHF4FLzbqM9hs7/9VkKaa04+DZhBiiQNyJKeScdZRugVOZ5ojoK2NciBQ6Oi4VLIJgvg==
X-Received: by 2002:a0c:ad07:: with SMTP id u7mr33463056qvc.2.1565709217678;
        Tue, 13 Aug 2019 08:13:37 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a37:3d2:: with SMTP id 201ls7184207qkd.7.gmail; Tue, 13 Aug
 2019 08:13:37 -0700 (PDT)
X-Received: by 2002:a37:4753:: with SMTP id u80mr330969qka.376.1565709217456;
        Tue, 13 Aug 2019 08:13:37 -0700 (PDT)
Received: by 2002:a37:a54e:0:0:0:0:0 with SMTP id o75msqke;
        Tue, 13 Aug 2019 05:19:08 -0700 (PDT)
X-Received: by 2002:ad4:4533:: with SMTP id l19mr17737168qvu.23.1565698748619;
        Tue, 13 Aug 2019 05:19:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565698748; cv=none;
        d=google.com; s=arc-20160816;
        b=bSyOe7LABRd7V6g5SQ4x3vZx4nHOOtAPihUoNR1NgOxHMtRaj5k2luT996cuL4L+sU
         fLeIaZ1/lsnYNWprqMM60KU9cPmPsIRbshNolCRVrPB9Nm5E+xUuQyVuYWO6Syk4hHf+
         hFVV212EjaSbe+lypFKOa33WEmLvRK3w9jm2f0TBgrM3fRFx9mroRazJh2/eMIMvNHiI
         h+tn0DRxsH8dWOgb335Xhy7fFmWkZFa7tV/y1gFXC8+5eEhRnGSiPbtKXnmut97WNzIl
         tlyEen1NqdfvFhIfGcDlLYBWgrzSVfSwj6TSk09z+W5J+kgk7f7FXGE4M4hEbN211pj+
         OGlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=Ey51rOQs6pREeIh9cdmyj66W3XNY9zI3cHQpc2k+3HQ=;
        b=llfNPkNBqoX3B72bG6QT6wY5RMwD76jktA+0zP4PDdMxfFyr7M5vG8LHLp83JOIwZH
         0Af04HSJVFkVOT5T0FLzSzy4ZVlkeczqOUjc5N6/rLODL3O8f8W8/AmOYNCaJA+2Nt9f
         ibZJl5v8JF9oSLzhvFgAGMaVS4btfBjG88loLl6Yhz3/AOM6zPM5y21QEeOeYV5xrJ4S
         hnphSzYFV4je4Qgjcy99TBQQYAz0WjLSUGogMyR1pAZ2RvVUwx6POZnAq5PYVT/KG2hD
         l7tHukgg0u/aOyFs0TqcTpADdyzObFWR9SQW4fITSuCzYibssfMnmfgcxHAsQA6J62r7
         FS6Q==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Kj2QCgHK;
       spf=pass (google.com: domain of 3vkpsxqgkae01pt22xrwv33v0t.r31@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=3vKpSXQgKAE01pt22xrwv33v0t.r31@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-sor-f73.google.com (mail-sor-f73.google.com. [209.85.220.73])
        by mx.google.com with SMTPS id k15sor370912qki.1.2019.08.13.05.19.08
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Tue, 13 Aug 2019 05:19:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3vkpsxqgkae01pt22xrwv33v0t.r31@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) client-ip=209.85.220.73;
X-Received: by 2002:a37:6844:: with SMTP id d65mr33008934qkc.398.1565698748030;
 Tue, 13 Aug 2019 05:19:08 -0700 (PDT)
Date: Tue, 13 Aug 2019 13:16:58 +0100
In-Reply-To: <20190813121733.52480-1-maennich@google.com>
Message-Id: <20190813121733.52480-2-maennich@google.com>
Mime-Version: 1.0
References: <20180716122125.175792-1-maco@android.com> <20190813121733.52480-1-maennich@google.com>
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
Subject: [usb-storage] [PATCH v2 01/10] module: support reading multiple
 values per modinfo tag
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
 header.i=@google.com header.s=20161025 header.b=Kj2QCgHK;       spf=pass
 (google.com: domain of 3vkpsxqgkae01pt22xrwv33v0t.r31@flex--maennich.bounces.google.com
 designates 209.85.220.73 as permitted sender) smtp.mailfrom=3vKpSXQgKAE01pt22xrwv33v0t.r31@flex--maennich.bounces.google.com;
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

Similar to modpost's get_next_modinfo(), introduce get_next_modinfo() in
kernel/module.c to acquire any further values associated with the same
modinfo tag name. That is useful for any tags that have multiple
occurrences (such as 'alias'), but is in particular introduced here as
part of the symbol namespaces patch series to read the (potentially)
multiple namespaces a module is importing.

Reviewed-by: Joel Fernandes (Google) <joel@joelfernandes.org>
Reviewed-by: Martijn Coenen <maco@android.com>
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190813121733.52480-2-maennich%40google.com.
