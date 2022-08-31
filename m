Return-Path: <usb-storage+bncBD26DNHQRAJRBTFZXSMAMGQEZ5JX6PI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x645.google.com (mail-pl1-x645.google.com [IPv6:2607:f8b0:4864:20::645])
	by mail.lfdr.de (Postfix) with ESMTPS id 796D65A7915
	for <lists+usb-storage@lfdr.de>; Wed, 31 Aug 2022 10:33:18 +0200 (CEST)
Received: by mail-pl1-x645.google.com with SMTP id s17-20020a170902ea1100b00175462f38b1sf655977plg.3
        for <lists+usb-storage@lfdr.de>; Wed, 31 Aug 2022 01:33:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1661934796; cv=pass;
        d=google.com; s=arc-20160816;
        b=AEUHYxmb6aOWns8py0EFucfr9f9xx7roiYFCFtyaViiZHe9OYMvyaDkE0TTtXC49Cy
         eiL950vI/8x47ox5GG3VYG4LNO0y8aqeWHg0Nd/Q7R3vxszsHTpq7YYPuj8KCIC6mcIz
         0hnnEI/Y/JeDxH/IIxuqEJyjMdBAOuIoEYZYL5Eve6c9GjkiI5uQr076d+R36xlst3nc
         zIFSXBN/xsK7uMYaCIZ20YN70bSa3KqROBzmuZblsrphG0js1tv+MXLcJAgfo6lu8Ug/
         qhT4xbzFQJNSwOzt6O9nydReOzz08dHPi8Fjce46j5i5tkxHaWvXUjpnSsAsT/01Jwzt
         wmNQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=hZZr1horHpdzCGm19lhnjVE4zNWC4QwXuxQTwuZbFug=;
        b=J9WVKVf6VmEuguP5o+HGVxe0msLeNLFt6UwNQ7cdmx2IVsIJ9BVmszBvM2TPNnN8cb
         Wz70IScD/+WSHt8Jff3NH7BAfYX0s/1ui0e5F/iGNU/jtr6hq6Q3/QXZUIMICBWuap11
         KZsUQhkp63lI/E296grFxpgkV6rx3kkKzbVjDCaGrzQ373Xuf73ftNflTMyW/KQv1inL
         qIXudz3oWfKtVWU0KICiaWebWnPhn4JVCZv14m8Dfw/oNx2KJuzG+VFwCM1r2oT5s/tG
         n53RFMI7LpqY+NBJsjJtzPc9iS0AA7YfbCXF20A0eqAJS30DzXBvqQl8drFF5dI/PVc3
         QkIw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@126.com header.s=s110527 header.b=OYhganZx;
       spf=pass (google.com: domain of zhongling0719@126.com designates 123.126.96.5 as permitted sender) smtp.mailfrom=zhongling0719@126.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=126.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:message-id:date:subject:cc:to:from:mime-version
         :sender:from:to:cc;
        bh=hZZr1horHpdzCGm19lhnjVE4zNWC4QwXuxQTwuZbFug=;
        b=SHx/VVca4Fggktw+f02OlbW/fwsETE+IornIbMlZY6CTpw7bse4tjl2gLdZqvEgQrc
         J2HpIlcK8t9ZrCQVwRTHRgpNqeUruMamLnHTxs/A7lEx7uMauoASAFv2mhqjTVogyxgY
         aBCKqCshOv1OWpwPpn0uQWydaYSFrR0130gA8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:message-id:date
         :subject:cc:to:from:mime-version:x-gm-message-state:sender:from:to
         :cc;
        bh=hZZr1horHpdzCGm19lhnjVE4zNWC4QwXuxQTwuZbFug=;
        b=bYoGLBTNTuJKuBPLcp78TS8fKLoJ8Gx0ZxjjHYjrHG3v1ha43s/cxvX0UvYUJV9sdZ
         DWi5G+PeYg5Sw/e2ykYgtosOoMFov0dbNk/mpM3JRqxB+aajarMX+NfzNj9EQ0I8IgEp
         /xJcMdpoZdr8wDPytUTOMvpHjL+9Y4T4yywdfUfFMS8o1v3SGk9GhK1alhuoBKgdaQvL
         n01aDRFuNuWDxbSb4PehlQ42McQOJsTUvmIDuZvobDb0dal9tAFuY5I+wCzrPrz23uJ+
         o4wLyIPac5OQs9rWJMYQnk7Ag6DCvkVGFC4fZOoKk5993H4NDzl89E0E9L52Cad7VmfT
         FQLw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo2JFuBITLoVsF4nwaWUlodohnp8sl/NYNT4sumBb16RDGrva/v4
	XlztqguL4hqeadH0ImmHL5eX2w==
X-Google-Smtp-Source: AA6agR7nguc6dAq8SxV+KMsFbCJYisTNXr7NbfHnQyOxwFWsN6afEBMti65k8tUCHpAjKjMJ3rWG/Q==
X-Received: by 2002:aa7:8b44:0:b0:537:a35d:3c11 with SMTP id i4-20020aa78b44000000b00537a35d3c11mr24925182pfd.76.1661934796426;
        Wed, 31 Aug 2022 01:33:16 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a62:5a01:0:b0:536:5777:1f90 with SMTP id o1-20020a625a01000000b0053657771f90ls6711184pfb.2.-pod-prod-gmail;
 Wed, 31 Aug 2022 01:33:15 -0700 (PDT)
X-Received: by 2002:a63:1043:0:b0:429:fd41:b7cb with SMTP id 3-20020a631043000000b00429fd41b7cbmr20587251pgq.442.1661934795479;
        Wed, 31 Aug 2022 01:33:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1661934795; cv=none;
        d=google.com; s=arc-20160816;
        b=qhCCxjOHCFw0uSuSWWaeO2bSvHPOdvcbq/7zZSxL/uy7DeexzBYrO3wEWxDWX0cN71
         JYQLoomxTQVRM0CL3MshyKUSTRmn9C21LQZovUjjH1IXNeB5qV+/WtAHrhkXgKuqfEU5
         yeOEtrLsIN5g1kltB/dvblFFD7ADSGsF2AhwygsovUFzdgvfc7ztTkspaOvwmNUgnZDQ
         vwx7tQpfEnUMlAcWwJbhW7FyGuuIQm3qRzFIShs91yMPFFIcv780DAeM+AAz4thXpiTh
         T+Qf6mv8nvguWwVIhO3cuu+3EpsUMV8rNFxVk8aKS7TzphUqTUMI4vyoqYeWf6LpQqXN
         kYXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=Efpjn8c17i97rDguMMb6qgxYF3kPl3NW9dQwRv5oh+Y=;
        b=r+QzdQQfKdYOSItjjAxKX8QHMFmTWdViv8vFP6a003hSn2V93519oQiFN26lwoAmRC
         SoLKbiOLG9SF+QgYqGVJKnA5DwSgCcd7oq5vfbTV5ZZOeA8ONUEkcnde0dL4p5TW8MiR
         xVfWauCyYmSkxoAtss/m0VpSLWkBhqIkwGSIfKtaaLNZ0wgB3DA4hUzEHb2K7RQvqRTJ
         LW0Ogybirv1yEWFi0j5/fk45LX58Gzr0JWuYxR2OacG7LGfsjw+vOozUyxY5HViJtrGe
         xyUZNm8p7NCcfozytjz6bJd2/Bz6c4zSIHzzdlWfNChxwhfoZ6eLUfp8NxaLII7IRYRq
         ZjUg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@126.com header.s=s110527 header.b=OYhganZx;
       spf=pass (google.com: domain of zhongling0719@126.com designates 123.126.96.5 as permitted sender) smtp.mailfrom=zhongling0719@126.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=126.com
Received: from mail-m965.mail.126.com (mail-m965.mail.126.com. [123.126.96.5])
        by mx.google.com with ESMTP id l5-20020a17090a72c500b001fbbd1a3b6asi1239788pjk.84.2022.08.31.01.33.14
        for <usb-storage@lists.one-eyed-alien.net>;
        Wed, 31 Aug 2022 01:33:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of zhongling0719@126.com designates 123.126.96.5 as permitted sender) client-ip=123.126.96.5;
Received: from localhost.localdomain.localdomain (unknown [112.64.161.44])
	by smtp10 (Coremail) with SMTP id NuRpCgDX30zAHA9jX8gDAg--.24868S2;
	Wed, 31 Aug 2022 16:33:05 +0800 (CST)
From: zenghongling <zhongling0719@126.com>
To: stern@rowland.harvard.edu,
	gregkh@linuxfoundation.org
Cc: linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	zhongling0719@126.com
Subject: [usb-storage] [PATCH v2] uas: add no-uas quirk for Thinkplus and
 Hiksemi usb-storage
Date: Wed, 31 Aug 2022 16:33:31 +0800
Message-Id: <1661934811-24263-1-git-send-email-zhongling0719@126.com>
X-Mailer: git-send-email 2.1.0
X-CM-TRANSID: NuRpCgDX30zAHA9jX8gDAg--.24868S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7Zr48JrW7WF17urWfWFyfJFb_yoW8Xw1fpF
	n8ZrZ5C397W3WavrnI9w4UCr93Ja1vkF1kGay7Kw15Zw1rAayUXrnxJr48Kry7Cr43Xr40
	vF4qvFWxKrWUG3DanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x0piahF7UUUUU=
X-Originating-IP: [112.64.161.44]
X-CM-SenderInfo: x2kr0wpolqwiqxrzqiyswou0bp/1tbiYBNu0FpEI1MM2gABs0
X-Original-Sender: zhongling0719@126.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@126.com header.s=s110527 header.b=OYhganZx;       spf=pass
 (google.com: domain of zhongling0719@126.com designates 123.126.96.5 as
 permitted sender) smtp.mailfrom=zhongling0719@126.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=126.com
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

The UAS mode of Thinkplus and Hiksemi is reported to fail to work on
several platforms with the following error message:

[   39.702439] xhci_hcd 0000:0c:00.3: ERROR Transfer event for disabled
               endpoint or incorrect stream ring
[   39.702442] xhci_hcd 0000:0c:00.3: @000000026c61f810 00000000 00000000
               1b000000 05038000

And when running iozone will disconnect from the USB controller, then after
re-connecting the device will be offlined and not working at all.

Signed-off-by: zenghongling <zhongling0719@126.com>
---
 drivers/usb/storage/unusual_uas.h | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/drivers/usb/storage/unusual_uas.h b/drivers/usb/storage/unusual_uas.h
index cdff7dc..bb0d31d 100644
--- a/drivers/usb/storage/unusual_uas.h
+++ b/drivers/usb/storage/unusual_uas.h
@@ -215,6 +215,24 @@ UNUSUAL_DEV(0x4971, 0x1012, 0x0000, 0x9999,
 		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
 		US_FL_IGNORE_UAS),
 
+UNUSUAL_DEV(0x17ef, 0x3899, 0x0000, 0x9999,
+		"Thinkplus",
+		"External HDD",
+		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
+		US_FL_IGNORE_UAS),
+
+UNUSUAL_DEV(0x090c, 0x2000, 0x0000, 0x9999,
+		"Hiksemi",
+		"External HDD",
+		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
+		US_FL_IGNORE_UAS),
+
+UNUSUAL_DEV(0x0bda, 0x9210, 0x0000, 0x9999,
+		"Hiksemi",
+		"External HDD",
+		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
+		US_FL_IGNORE_UAS),
+
 /* Reported-by: Richard Henderson <rth@redhat.com> */
 UNUSUAL_DEV(0x4971, 0x8017, 0x0000, 0x9999,
 		"SimpleTech",
-- 
2.1.0

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/1661934811-24263-1-git-send-email-zhongling0719%40126.com.
