Return-Path: <usb-storage+bncBDDLBMU22IMBBIVXWOQAMGQEU6GGAHI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf45.google.com (mail-qv1-xf45.google.com [IPv6:2607:f8b0:4864:20::f45])
	by mail.lfdr.de (Postfix) with ESMTPS id CE5486B6054
	for <lists+usb-storage@lfdr.de>; Sat, 11 Mar 2023 20:50:59 +0100 (CET)
Received: by mail-qv1-xf45.google.com with SMTP id jo13-20020a056214500d00b004c6c72bf1d0sf4731560qvb.9
        for <lists+usb-storage@lfdr.de>; Sat, 11 Mar 2023 11:50:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1678564259; cv=pass;
        d=google.com; s=arc-20160816;
        b=LZ7fzpxTiJ37sv1Zux5ZWhbIBjWp52/UcmjWyQWwCM3rhFMiH0zrJ3s10ZRuWzsMX6
         6BQoyYqC3L4tHVmZDIqXRtB/vcPceIM40pgys0U17ZX57j8P1tq1CViRTW5iKNwfnPc9
         Q5BLxvkZXVDeZpj9otfCplnugoIWev+paFpg082oLGGDY0Me3hVheStr74f8mNcdHwJg
         VH90t8ODD5ujXVU47NmxlcVEiJEsOzH2RGg7WyDSeMLODdA6Wa0oBwwRTKnHlAaItzTl
         mqz3BJKg2ch/AWPSWulhSnzC1eKDIQa9Nl/KIyKJ8ipHpbL5nbRaBmmZR28Sl5yAg7K6
         Nubg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=bGGKZuja2FdWXHJCe1VeVj1fowCoM+roMSRqPX04mP4=;
        b=ldtUjYXvrHLIGQaqEJhxMGWBml11yKJPZv0Gu+0GGQLAphrqzOs8udlhv+k+KncfRf
         ABVxT490MWGladdIY+SWAZ/vNl+tWyvmjcjsnRYA3DbPv+v37K/vVt6kA4WSyWFpLwMl
         u+3YQvfmGVmtDoGA075BVZC9+++vu11MQm3vjkbKwTnKdCHxttiBnwQ3s8xEzHx6gp72
         YfsL9ZoZJBzq6An0XxLJzfVPV8Rw3OdQGG8ro4seIwfE4+lAur3IPCucRVjgHKDQU3MM
         izoiT8iVMKcdzCsPc5glPb/C73ydn7EkrT2blOQmOE6YaksmXkniTe4F1e6wq1Q11FA1
         xYaA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=ZhLtbjcr;
       spf=pass (google.com: domain of yaro330@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=yaro330@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1678564259;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=bGGKZuja2FdWXHJCe1VeVj1fowCoM+roMSRqPX04mP4=;
        b=XtzOW+YBHDuc3LyOhS3j0Kd/t/jsSoVjpkKw5cdutTIC1qeyjakbUhknc/MV+K3MdN
         lid9DIxnBHu2qXy/UDRLldGZ4BOa4NBekn1Z7udC3mMb3f9JD1ZcUbicnUp6Y3BNgjNR
         nEWs5DPXF2pXQXe+lRgZdNu+5NHCTA3V7Sems=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678564259;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bGGKZuja2FdWXHJCe1VeVj1fowCoM+roMSRqPX04mP4=;
        b=7LNMwiHRivRqnjQEigx51bL5XBxIcuiyXjh4t0YWX7RBeLnX2BDfb2FAH1uHon8NOm
         TtkmIS8SO5y1PSuVvDusqw8Dn9xdDp+5EGDobjXqzCLx8woJEiaJgt6ByKKrA9YGeP+Y
         2uR23wmLSIYnFO2jlczuz/6oAlRlIxmlCmNHeEtHWkBWb2/Se/Sp65WzeBvKGRmrtv1R
         2HsWs/6sFq85orEVmiNupildzk/lyF99xrw+0Z/T+TdCVDjBwYxT8r3y9O0T2PxiaBTc
         mqxLQcJdFGYjymJjC03AdTtvZwfVwtLzZlKiE/E9Vi7o1oxTB9jPEjaWol4acFV/c0CF
         y0tA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AO0yUKXwcj4A0cgfJcRWsHEly45QyYzWHe6KEF+twwN8PkP/AR8bT/w3
	gLVbPBMEw23UhUuMM290Giayqw==
X-Google-Smtp-Source: AK7set/H5aMR15/kldw5ppaSMMWN6dWQnuB/r38Rg1xnF4UUImGyXYgE4FYojWrLwMzv5UiCH003zQ==
X-Received: by 2002:a37:6881:0:b0:745:6dae:e5bf with SMTP id d123-20020a376881000000b007456daee5bfmr254505qkc.15.1678564258786;
        Sat, 11 Mar 2023 11:50:58 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6214:2e48:b0:56e:9b27:727c with SMTP id
 my8-20020a0562142e4800b0056e9b27727cls6546070qvb.0.-pod-prod-gmail; Sat, 11
 Mar 2023 11:50:58 -0800 (PST)
X-Received: by 2002:a05:6214:a48:b0:56e:ac29:dc16 with SMTP id ee8-20020a0562140a4800b0056eac29dc16mr746236qvb.9.1678564258430;
        Sat, 11 Mar 2023 11:50:58 -0800 (PST)
Received: by 2002:a05:620a:4113:b0:742:3ded:b7f0 with SMTP id af79cd13be357-74373888b3fms85a;
        Sat, 11 Mar 2023 04:34:44 -0800 (PST)
X-Received: by 2002:a05:600c:1c9c:b0:3df:9858:c03a with SMTP id k28-20020a05600c1c9c00b003df9858c03amr3755766wms.15.1678538083264;
        Sat, 11 Mar 2023 04:34:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1678538083; cv=none;
        d=google.com; s=arc-20160816;
        b=bb+hwBhsbMv8JDHgCp4L0yXTNJ6kFVVZKcx3UStRKsg6heiafvPOBbJeM3+QTr6B8S
         gUuX+609al0STQFza3vo3vQMZpp7WOhw8V+RRnwOe8ySV8i3L/A+Xr7/hMus6T01Q1lc
         Rcyz8ZxlN5TqH3/8c+CHzt/xR9rW+RXZfXsHLdHGoODs0poJlIsxRz07RiXNjDRpyXXO
         DDa+UOkruN7Jyp85EE9naFfXp3WRQBjajiK1A1IoSlK8gAcsrU8Hi47oz8Rs2xsnJOKG
         35TiYHzQN6w2/b2PSa7VBQbnDhxqsbkkedi/10KRGWubzHfDaFRFTZePJ4f+XalpyML2
         xAnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=manwNb7+2j+rOZl7hExhu3IXnUZMurmRVTmeoMoFl/A=;
        b=NpGpSLwOBOOGBPQttNPyEtrDk3yj22Mb9sRyvFnhjPL1goHyRDNLXxFmsvrnGPA7PW
         cakOSedOPlRINYnc4c8RRI8Obm63ltAzTlxD+xTcNHTZeH3oZYJlGe9uTkMRTnvuqBpg
         SMrMG77cDqE2CAtP190YIlMswjOtM4QkW6HMEyqM4SC0H4EAjVr9rvkE92twS1EOHSxv
         iLz0aGd6iPlqM2I+GlFnDmvQRoAZ+O8d0o7eOcVj9VrJJUvrM0jlCUc5jKRWWIYMyluI
         JcH21l3mmuJ0NJIwB/FF2tcUJ+S2YP9s1Uj+LSYEmL0x8KDwPA3V9THfhDKqeMMFO9tu
         MTRg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=ZhLtbjcr;
       spf=pass (google.com: domain of yaro330@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=yaro330@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id r18-20020a05600c459200b003dceaf0cfe2sor688722wmo.26.2023.03.11.04.34.43
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Sat, 11 Mar 2023 04:34:43 -0800 (PST)
Received-SPF: pass (google.com: domain of yaro330@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:a05:600c:1d8d:b0:3ec:3abe:934d with SMTP id p13-20020a05600c1d8d00b003ec3abe934dmr1379018wms.4.1678538082979;
        Sat, 11 Mar 2023 04:34:42 -0800 (PST)
Received: from localhost.localdomain ([84.32.202.14])
        by smtp.gmail.com with ESMTPSA id k7-20020a7bc407000000b003eafc47eb09sm1651094wmi.43.2023.03.11.04.34.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Mar 2023 04:34:42 -0800 (PST)
From: Yaroslav Furman <yaro330@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: yaro330@gmail.com,
	Alan Stern <stern@rowland.harvard.edu>,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org
Subject: [usb-storage] [PATCH] uas: Add US_FL_NO_REPORT_OPCODES for JMicron
 JMS583Gen 2
Date: Sat, 11 Mar 2023 14:34:18 +0200
Message-Id: <20230311123418.16272-1-yaro330@gmail.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-Original-Sender: Yaro330@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=ZhLtbjcr;       spf=pass
 (google.com: domain of yaro330@gmail.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=yaro330@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
Content-Type: text/plain; charset="UTF-8"
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

Just like other JMicron JMS5xx enclosures, it chokes on report-opcodes,
let's avoid them.

Tested-and-reported-by: Yaroslav Furman <yaro330@gmail.com>
Signed-off-by: Yaroslav Furman <yaro330@gmail.com>
---
 drivers/usb/storage/unusual_uas.h | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/usb/storage/unusual_uas.h b/drivers/usb/storage/unusual_uas.h
index c7b763d6d102..e4ff28ba93e5 100644
--- a/drivers/usb/storage/unusual_uas.h
+++ b/drivers/usb/storage/unusual_uas.h
@@ -97,6 +97,13 @@ UNUSUAL_DEV(0x152d, 0x0539, 0x0000, 0x9999,
 		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
 		US_FL_NO_REPORT_OPCODES),
 
+/* Reported by: Yaroslav Furman <yaro330@gmail.com> */
+UNUSUAL_DEV(0x152d, 0x0583, 0x0000, 0x9999,
+		"JMicron",
+		"JMS583Gen 2",
+		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
+		US_FL_NO_REPORT_OPCODES),
+
 /* Reported-by: Claudio Bizzarri <claudio.bizzarri@gmail.com> */
 UNUSUAL_DEV(0x152d, 0x0567, 0x0000, 0x9999,
 		"JMicron",
-- 
2.39.2

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20230311123418.16272-1-yaro330%40gmail.com.
