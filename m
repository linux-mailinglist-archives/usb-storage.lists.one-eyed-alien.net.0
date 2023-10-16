Return-Path: <usb-storage+bncBDTNDO5RRYJRBGWLWOUQMGQEXM7J6JQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x545.google.com (mail-ed1-x545.google.com [IPv6:2a00:1450:4864:20::545])
	by mail.lfdr.de (Postfix) with ESMTPS id 583AF7CA07D
	for <lists+usb-storage@lfdr.de>; Mon, 16 Oct 2023 09:26:19 +0200 (CEST)
Received: by mail-ed1-x545.google.com with SMTP id 4fb4d7f45d1cf-5362b33e8ffsf3234954a12.3
        for <lists+usb-storage@lfdr.de>; Mon, 16 Oct 2023 00:26:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1697441179; cv=pass;
        d=google.com; s=arc-20160816;
        b=bX5JXuKthRWLITjjiIljiTEgLUdf9qcURSO8nWs8wQcjZVErFYMpL9pCFFTXjUlhHx
         3c0OvishblcKpW01ftcBWIznBhaDP3OC0cf7NlI0R740ZEQ4cXnxNSmE3hgTGTAZG86g
         s9f3V0sNXTGjDmjcG6Kb7+VDRrnwF57gj0onq+0GwVQbEzuugzN28bwFFaAMIvefyN5c
         NA1pFMthQRX6QH/iNci6DUbZ3Igxg6geT6jyqOO0P+KiCSzOeSkUr1MsJPejuIKiDPNY
         lVn0iAGH2p1TshReXMoJj7LzqofDsHkMVJKpPkCjPocuIDVqjqZhq3n4pHcTBcgEjPu4
         Di1g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=QGl2pok+Yn8AtSR0CjHRdljvOJnyIY/EkV85qq+Met0=;
        fh=qb5W/8HITKC89mNaBbNAGCcLaXj6l7L8f0MvdHCcfUs=;
        b=LJC6omsvXEURMjR3TU4K/yjDrHP1bl2Lx9HlFrH/RVi8ZLekwpobAi6AQ6umuUg2oZ
         RPkjsz864l+a1lkbULKx18uMj5CZkhpH8B4k+xO7FF+xjsKZZ/yIzXI9uzeXUvQirZVp
         dVNM6bRHXJkYWUWJb9Moqmu8iusU8JqzJV5Se1TUd5n5frtcicd3i9ZoJk1WdNbZZnuT
         eh2mGD44GOoSGN+gowg6cAWKhEP3jClzvsa2bToPIeZnB8Cfkkj8x7jb6RI4gQbhvqkx
         zmZA7XoQjmYxEPdWSFtMR2P7Fi/4Sh3+y89uHKAaaFK+OWakQBaJL8iFmow2Tbys7zF/
         s8pQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=lGPOcVpp;
       spf=pass (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=gmazyland@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1697441179; x=1698045979; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QGl2pok+Yn8AtSR0CjHRdljvOJnyIY/EkV85qq+Met0=;
        b=f+qgcMndtzi3z12s7oLNg+t168wHI7w1p07oHagye7gEmDvQrzFLogSgi+A0k3OXhv
         3GLQbqN8gkxEQ5g7RF84mQ5NQK/c3CgBXE5RcwQiiiJ9qyP483oZbUcbGAYkz9301IWf
         5VBSkvOFFJmytAbR3DuicW5BsJQ5bYrMUTuk8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697441179; x=1698045979;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QGl2pok+Yn8AtSR0CjHRdljvOJnyIY/EkV85qq+Met0=;
        b=LQ1v3Yd5P53B+7/5edHfwkm632DyDCPeBwIfbxITr2rN/4MsJon0OIVdC3gZ4GXfOM
         M3zQhh3+wbUdPC1KFVv+R/SsPr2+ZY+MNx7XKt+axn3ik7MEptTBUK9hdOuJ5z5tBKzV
         4PkeYfcW2X80NwAZ22z2YzKk5nDypkuqbobmaj2LDR2shhWsa5vcLKEtXb1rDzAwYn6t
         oCNfM6qXjVoenK/7jZ4Mjt9Nqy5iwG1Dw9RwtHutu2j/4Q5uJp3pP+xKzzFiF95XHgwM
         FntD5kU/TTVGAFsX3LXBd/EHtaqGbC266+uBtI9UZHENL7AMXBWnEJGZO+YzoKUxCkqu
         ITKA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOJu0Yx3M6ytV+etCbF2Un5qYhNur8DYcASk8JaDBcqNQX8pRsDckvqS
	ROysZeC6srhkbFFFksBowf3znQ==
X-Google-Smtp-Source: AGHT+IF5d7nD3rr3eslrzRE+nwDL3QU6e1/957GuT5J5LCjBUG7hivBifVNrvlBFwDhbmRuycJUYxg==
X-Received: by 2002:a05:6402:3507:b0:53e:ec17:c885 with SMTP id b7-20020a056402350700b0053eec17c885mr447325edd.10.1697441179104;
        Mon, 16 Oct 2023 00:26:19 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6402:4017:b0:53d:beed:e28f with SMTP id
 d23-20020a056402401700b0053dbeede28fls71617eda.1.-pod-prod-02-eu; Mon, 16 Oct
 2023 00:26:18 -0700 (PDT)
X-Received: by 2002:a17:907:60d1:b0:9bf:b6f5:3a08 with SMTP id hv17-20020a17090760d100b009bfb6f53a08mr3921281ejc.52.1697441177956;
        Mon, 16 Oct 2023 00:26:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1697441177; cv=none;
        d=google.com; s=arc-20160816;
        b=YkEwc6j6uO0Oc4LWTAk1MLC/M0Q5eWLk1h+hySqizV05GQAtl87E5r4MPtb8Fcdkmf
         SvNDG8T31r0zudImNId6fw3pQuuV9Xnub5penSvXgS0l8ACwHBDwLxwKQ4O30/r4CRzw
         iTUk055kE3UiITxRsqgcIn34Ore+yGIkGLF4NbTaXFqwp3c8zYckcTcSbbybqZa32Igk
         LznuM/+abpfE737dnocZ8PBowZc0FZmPbj/jC4MCzb25gbyV8gL1DIDpYwAyPUnO3S1x
         WRfFz292hKtdZYJkuXpa7Z24tJo8IokLb0txD9/DonkS81Se+R8YSuNsqFa+TSGFlMOS
         Dw6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=xnxVJqIRdQtouvx5n5R9hP/D5oVVipLHSJQwRP3ossw=;
        fh=qb5W/8HITKC89mNaBbNAGCcLaXj6l7L8f0MvdHCcfUs=;
        b=hn7bZld2aeFlSFRqqrWYpti3P2zhk7XfDZSQHwPZx804ZncGIYdwDkzKOA9QRTOpLs
         Ck6JAKFuY/AF6NGjz612PUEW+9Ztbm7kQWF8oyxO8UdpJFeV5ky+755Xs4sNphF1xWJs
         2AtxQcj6kpUgF18NtLdrXZnbBhPHsHzKnMzqVgkUIdonzeja3vGaIVizIhi9EGQRb8rZ
         jR/n68EKoRCU0XnSaOBmwp/Luzlxbk9naJqFjGBi2DvYfZT5kcvZT3jQLo4GfpOIq0MU
         akziSLYVqNGpQtZFt4B6P6DpMZTFITseweqVhKsQVy0XMX15gV2/h2QrHyCJeV0oCqo6
         F8BQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=lGPOcVpp;
       spf=pass (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=gmazyland@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id v23-20020a1709067d9700b009b2cdcddb2dsor1056100ejo.0.2023.10.16.00.26.17
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Mon, 16 Oct 2023 00:26:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:a17:906:9c1:b0:9b2:89ec:d701 with SMTP id r1-20020a17090609c100b009b289ecd701mr32086734eje.27.1697441177480;
        Mon, 16 Oct 2023 00:26:17 -0700 (PDT)
Received: from sauvignon.fi.muni.cz ([2001:718:801:22c:bdcb:518:be8f:6a76])
        by smtp.gmail.com with ESMTPSA id n25-20020a17090673d900b0099297782aa9sm3399980ejl.49.2023.10.16.00.26.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Oct 2023 00:26:17 -0700 (PDT)
From: Milan Broz <gmazyland@gmail.com>
To: linux-usb@vger.kernel.org
Cc: usb-storage@lists.one-eyed-alien.net,
	linux-scsi@vger.kernel.org,
	stern@rowland.harvard.edu,
	gregkh@linuxfoundation.org,
	oneukum@suse.com,
	Milan Broz <gmazyland@gmail.com>
Subject: [usb-storage] [PATCH 5/7] usb-storage,uas: do not convert device_info
 for 64-bit platforms
Date: Mon, 16 Oct 2023 09:26:02 +0200
Message-ID: <20231016072604.40179-6-gmazyland@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231016072604.40179-1-gmazyland@gmail.com>
References: <20231006125445.122380-1-gmazyland@gmail.com>
 <20231016072604.40179-1-gmazyland@gmail.com>
MIME-Version: 1.0
X-Original-Sender: gmazyland@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=lGPOcVpp;       spf=pass
 (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=gmazyland@gmail.com;       dmarc=pass (p=NONE
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

This patch optimizes the previous one for 64-bit platforms, where
unsigned long is 64-bit, so we do not need to convert quirk flags
to 32-bit index.

Signed-off-by: Milan Broz <gmazyland@gmail.com>
---
 drivers/usb/storage/Makefile  | 3 +++
 drivers/usb/storage/mkflags.c | 9 +++++++++
 drivers/usb/storage/usb-ids.h | 4 ++++
 3 files changed, 16 insertions(+)

diff --git a/drivers/usb/storage/Makefile b/drivers/usb/storage/Makefile
index 612678f108d0..62ebaa76ef95 100644
--- a/drivers/usb/storage/Makefile
+++ b/drivers/usb/storage/Makefile
@@ -57,6 +57,9 @@ $(obj)/usual-tables.o: $(obj)/usb-ids.c
 $(obj)/uas.o: $(obj)/usb-ids-uas.c
 clean-files		:= usb-ids.c usb-ids-uas.c
 HOSTCFLAGS_mkflags.o	:= -I $(srctree)/include/
+ifdef CONFIG_64BIT
+HOSTCFLAGS_mkflags.o	+= -D CONFIG_64BIT
+endif
 hostprogs		+= mkflags
 
 quiet_cmd_mkflag_storage = FLAGS   $@
diff --git a/drivers/usb/storage/mkflags.c b/drivers/usb/storage/mkflags.c
index 2514ffef0154..08c37d2e52d6 100644
--- a/drivers/usb/storage/mkflags.c
+++ b/drivers/usb/storage/mkflags.c
@@ -89,11 +89,15 @@ static struct svals vals[] = {
 
 static unsigned long get_device_info(uint64_t flags, unsigned int idx)
 {
+#ifndef CONFIG_64BIT
 	if (flags < HI32)
 		return (unsigned long)flags;
 
 	/* Use index that will be processed in usb_stor_di2flags */
 	return HI32 + idx;
+#else
+	return flags;
+#endif
 }
 
 static void print_class(uint8_t bDeviceSubClass, uint8_t bDeviceProtocol)
@@ -123,6 +127,10 @@ static void print_type(unsigned int type)
 
 static void print_usb_flags(const char *type)
 {
+#ifdef CONFIG_64BIT
+	printf("const u64 usb_%s_di_to_u64[] = {};\n", type);
+	printf("const unsigned long usb_%s_di_idx_size = 0;\n\n", type);
+#else
 	int i, count;
 
 	printf("const u64 usb_%s_di_to_u64[] = {\n", type);
@@ -134,6 +142,7 @@ static void print_usb_flags(const char *type)
 	}
 	printf("};\n\n");
 	printf("const unsigned long usb_%s_di_idx_size = %i;\n\n", type, count);
+#endif
 }
 
 static void print_usb_storage(void)
diff --git a/drivers/usb/storage/usb-ids.h b/drivers/usb/storage/usb-ids.h
index 8bfd84e07f96..4abe1a6d3a66 100644
--- a/drivers/usb/storage/usb-ids.h
+++ b/drivers/usb/storage/usb-ids.h
@@ -15,6 +15,9 @@ extern const u64 usb_uas_di_to_u64[];
 static u64 usb_stor_di2flags(const u64 *di_to_u64,
 		unsigned long idx_size, unsigned long idx)
 {
+#if IS_ENABLED(CONFIG_64BIT)
+	return idx;
+#else
 	u64 flags = 0;
 
 	if (idx < (1UL << 31))
@@ -28,6 +31,7 @@ static u64 usb_stor_di2flags(const u64 *di_to_u64,
 		WARN_ONCE(true, "usb_stor_di_to_u64 table not updated");
 
 	return flags;
+#endif
 }
 
 #endif
-- 
2.42.0

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20231016072604.40179-6-gmazyland%40gmail.com.
