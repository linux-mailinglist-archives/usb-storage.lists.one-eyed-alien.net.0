Return-Path: <usb-storage+bncBDFKTTUNQMNRBVMB6COQMGQEF7EDVKA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x645.google.com (mail-pl1-x645.google.com [IPv6:2607:f8b0:4864:20::645])
	by mail.lfdr.de (Postfix) with ESMTPS id BD7CC6624CB
	for <lists+usb-storage@lfdr.de>; Mon,  9 Jan 2023 12:56:07 +0100 (CET)
Received: by mail-pl1-x645.google.com with SMTP id c17-20020a170902d49100b00192be705f76sf6204124plg.13
        for <lists+usb-storage@lfdr.de>; Mon, 09 Jan 2023 03:56:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1673265366; cv=pass;
        d=google.com; s=arc-20160816;
        b=E5Cq8UIXTRLKo49JpeNH2tlCW0BzFHk7gBvz6EeLwzeFSx5rdKnwpELz1s53rusIHc
         aZK+rVgahIZBRy8HcuGzOlLK1W2TYen9q3kLdd5f0o7R4KFaBMZjY5frCPOeYNmBSEOf
         7iKP1LKYh9AmXT+EZH0oWRyFIhiDohn0P55GU5fYGwml7yvE0DY56RFddRFmbdtXgGzu
         oPrOCA41rWPNf2Ly91zOjEcKvkVhx7Sva42xwhUu2EkJ5x+amLENOTvdxr34aKVFs8x4
         T1NPWFFFhktMv2GTXeRWorK2bJfBrmAnl1Tge+84hl+ZqERHU/5nb9OGJO7jSuyTdRhg
         nSaw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=gVNwtGeV3u/aH14eS4iHCZm2DFmZOyf0XQlrPlvnX64=;
        b=J8s8OByIymm3l8/k0jsuon4N3bmGnYjln8Xe4/GcET3WTGewD/vRTEqfopXR++Cyu7
         kYWjRwbVf+l+hV1TqGxCSUrdD/FRoIGRPYMREmqk5MjeLbFWTHs5T0ZrWzYetz5e93K1
         kJJbAz3NvW460pdm4p1wGdG2TEdLkIMv9hQDb9crZ1s/wYMJvt/9wXfAnrN41nRgumOO
         31IbhchKDep0F2ZQiHKsmDAGhuXGs4J5QJ8z0hSElOhizfeBGfpYlfQWrMM2QWoXo853
         iSAJ88b0Wtjd6aa3z7IW3zsqIJbgsfdVRPe4UKF299drCuLPlePgoCS5xOt9oZ9xa/cz
         aKAA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=QZxwtDxP;
       spf=pass (google.com: domain of qkrwngud825@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=qkrwngud825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=gVNwtGeV3u/aH14eS4iHCZm2DFmZOyf0XQlrPlvnX64=;
        b=MkwZOS5S3343NQ1rWSL6Mu4SFyFqDn0V782gLQ+6oZSLDGlJPck+kXrfqPUD4fCPhf
         kiB7nkZ0GZzBbvmFoR8OBwiJe2YQOO9gZeibxyeXGmAyF+IU8bYrhzihlZx2zTd7IEgx
         LDmGpNTKQywuic7E9bEnGCYAbaH5Nnb//koog=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-gm-message-state:sender:from
         :to:cc:subject:date:message-id:reply-to;
        bh=gVNwtGeV3u/aH14eS4iHCZm2DFmZOyf0XQlrPlvnX64=;
        b=H5sXMZDM74A/YdNEYx7XWXfigKXLFiT8s4LApynTaunKuse0MdtDMj/rfdjeZ1AVDa
         +dXXULC8BShrIIKXEjDSZCpZiK2uNF63O98YxF0hnIxSaYeCpGBi9Kui6iCaTswB+J9c
         qj4HbHL1nQp/Cna6tWHA5YZ4BPg5S5nW2MsloDt2iv0VpeRNU5aoqawgOXbkSQ/ywm8J
         hRAqs9Y64r2Zn8LDitY39XMgZgDs0IFQypa73AxVJxun0qJ7EJVCEbn7BzbfsOGGTf00
         3Di+YDAlD2hjiKTUgSMqLnUJFcplH9eBHUhR5zFxGEoenjLmKPBipH9qZVb/RRr+c5Md
         OOcg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AFqh2ko6bR9bKgvBqgbxYHKEF7VovwBMLpGauQAURoi3+ZCx+l1rl9o7
	oSEn7CJFSFlvMKlg4qRd13TtGA==
X-Google-Smtp-Source: AMrXdXs+wXurHnbDZK2WbnBWBliyhbBEdgGeOimKvmjaFq+y9tp9tXswRr9mr3sDVi/d1CwT/Nr24w==
X-Received: by 2002:a63:d541:0:b0:478:d6da:85d with SMTP id v1-20020a63d541000000b00478d6da085dmr2702433pgi.60.1673265365735;
        Mon, 09 Jan 2023 03:56:05 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:903:40cc:b0:192:fc11:281e with SMTP id
 t12-20020a17090340cc00b00192fc11281els5332789pld.1.-pod-prod-gmail; Mon, 09
 Jan 2023 03:56:04 -0800 (PST)
X-Received: by 2002:a17:902:d491:b0:192:b40b:e41 with SMTP id c17-20020a170902d49100b00192b40b0e41mr51995882plg.61.1673265364635;
        Mon, 09 Jan 2023 03:56:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1673265364; cv=none;
        d=google.com; s=arc-20160816;
        b=OZg8wWx+PV/YQBjtSw7mZeJZ5l7q2Kd8tyg4h5DO2ja8HY+ylh8j0KUh6aLpHl3kvK
         tNhY9TwmLDIsWq5xhnDvLMrlb2mwCvhL3s2Pue4zVS0zYgntVeaWK8gRonHnvbtjM2eY
         z3B2VOwNCwTDoQYHSdo8ZXKEUrip+3H/CAl3pM5/TUdgoODAP2XT+iIC0P04TkP/NjBC
         RAPLl0/pKQIS9Ba3IZWBstItN8Adj3aDwM5G5M9lME087Ey0+7TdXqvGt9k3BSlRV4Oj
         o+EPfHjfH43Ts0KsqD8GVgPsiF3okxrtqgj9BRRme4oIrHHGIuIO4+1x1i18eoMaF+BY
         qT8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=O2Vznj+13ypsaoc19aLWfxS3PvpF+FOZcecypmoCNgo=;
        b=OU3lxhUbRdgPPha2s0qjVkXUWBbSeb8CDgz/tmWBs0JxEPgLw6N7zNWOlE+zYfpZUB
         29Xy9CoF+v0FQa3JMqEnIUZftNvcbJDJllHyJbntBOumWBADtpHS6z5OAK4W+w60OMbQ
         +MgQm9X/+wcc5LLOcHseyODgMF/oWQxh6qRc3nVnNEzkZra2Vl8YOPrUGuAeGMjwk7Z+
         ha47zMBpM5LYwbFH9y/sKH9VRpr0LgKTdGRp2eeDE8n/aTUDakZjUWgDzUPFpL8AP+eq
         6+hjXiFT9crSlOR1bAdXyGLE9fGfwdpICLHE//b1zV84N256Da/SfuNPbtE8bVDONTRi
         sO4A==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=QZxwtDxP;
       spf=pass (google.com: domain of qkrwngud825@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=qkrwngud825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id b4-20020a170902e94400b00192d7647efdsor3770851pll.11.2023.01.09.03.56.04
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Mon, 09 Jan 2023 03:56:04 -0800 (PST)
Received-SPF: pass (google.com: domain of qkrwngud825@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:a17:902:d584:b0:193:23b6:d23b with SMTP id k4-20020a170902d58400b0019323b6d23bmr7342333plh.16.1673265364049;
        Mon, 09 Jan 2023 03:56:04 -0800 (PST)
Received: from localhost.localdomain ([218.150.75.42])
        by smtp.gmail.com with ESMTPSA id h7-20020a170902680700b001895f7c8a71sm5998518plk.97.2023.01.09.03.56.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Jan 2023 03:56:03 -0800 (PST)
From: Juhyung Park <qkrwngud825@gmail.com>
To: linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	gregkh@linuxfoundation.org
Cc: stern@rowland.harvard.edu,
	zenghongling@kylinos.cn,
	zhongling0719@126.com,
	Juhyung Park <qkrwngud825@gmail.com>
Subject: [usb-storage] [PATCH] Revert "usb-storage: Add Hiksemi USB3-FW to IGNORE_UAS"
Date: Mon,  9 Jan 2023 20:55:50 +0900
Message-Id: <20230109115550.71688-1-qkrwngud825@gmail.com>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
X-Original-Sender: qkrwngud825@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=QZxwtDxP;       spf=pass
 (google.com: domain of qkrwngud825@gmail.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=qkrwngud825@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

This reverts commit e00b488e813f0f1ad9f778e771b7cd2fe2877023.

The commit e00b488e813f ("usb-storage: Add Hiksemi USB3-FW to IGNORE_UAS")
blacklists UAS for the entire RTL9210 enclosures. Realtek's VendorId is 0x0bda
and RTL9210 enclosures reports 0x9210 for its ProductId.

The RTL9210 controller was advertised with UAS since its release back in 2019
and was shipped with a lot of enclosure products with different firmware
combinations.

If UAS blacklisting is really required said product (Hiksemi USB3-FW), it
should be done without blacklisting the entire RTL9210 products.

Fixes: e00b488e813f ("usb-storage: Add Hiksemi USB3-FW to IGNORE_UAS")
Cc: Alan Stern <stern@rowland.harvard.edu>
Cc: Hongling Zeng <zenghongling@kylinos.cn>
Signed-off-by: Juhyung Park <qkrwngud825@gmail.com>
---
 drivers/usb/storage/unusual_uas.h | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/drivers/usb/storage/unusual_uas.h b/drivers/usb/storage/unusual_uas.h
index 251778d14e2d..c7b763d6d102 100644
--- a/drivers/usb/storage/unusual_uas.h
+++ b/drivers/usb/storage/unusual_uas.h
@@ -83,13 +83,6 @@ UNUSUAL_DEV(0x0bc2, 0x331a, 0x0000, 0x9999,
 		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
 		US_FL_NO_REPORT_LUNS),
 
-/* Reported-by: Hongling Zeng <zenghongling@kylinos.cn> */
-UNUSUAL_DEV(0x0bda, 0x9210, 0x0000, 0x9999,
-		"Hiksemi",
-		"External HDD",
-		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
-		US_FL_IGNORE_UAS),
-
 /* Reported-by: Benjamin Tissoires <benjamin.tissoires@redhat.com> */
 UNUSUAL_DEV(0x13fd, 0x3940, 0x0000, 0x9999,
 		"Initio Corporation",
-- 
2.39.0

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20230109115550.71688-1-qkrwngud825%40gmail.com.
