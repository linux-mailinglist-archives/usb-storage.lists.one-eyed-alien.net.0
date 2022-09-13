Return-Path: <usb-storage+bncBCLNZ6OO5QHRBUG4QGMQMGQEJ2NKZBY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1046.google.com (mail-pj1-x1046.google.com [IPv6:2607:f8b0:4864:20::1046])
	by mail.lfdr.de (Postfix) with ESMTPS id 395565B6C8A
	for <lists+usb-storage@lfdr.de>; Tue, 13 Sep 2022 13:49:38 +0200 (CEST)
Received: by mail-pj1-x1046.google.com with SMTP id v18-20020a17090a899200b00200a2c60f3asf9827146pjn.5
        for <lists+usb-storage@lfdr.de>; Tue, 13 Sep 2022 04:49:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1663069777; cv=pass;
        d=google.com; s=arc-20160816;
        b=VW5zNvqpoS4i9fyCtpNxqC67tNTrVcj+XWvMq2Y4UrFpYsFoGr7vr528QJDsoxRZ5Y
         6egZbACaF/FeucP8BqKhnEnLwwisHQlwsWsixVXXz0eJnBt1SPJk11X2aiHPBM2L5R30
         McqtZpSShTEntOeYSxWQjdOywBpCVq6045vaaNV5yQ8lTHhg15H1yoNzDsaJae6/6u15
         ILavMxBH8bSQ+5oesOFAKcBVXfb+itWvMg7hv6Ic1v193APjaOv4sFGf6paHo7yV3ogy
         wMF/E2IUqgCjSNGof8oJTJuWpY2jVVDaF9A1EBaSf41hzbx8qC50FO1gPtT898sV1zuk
         QJ9A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=LpniYVewQDWAA7mf2emWltcOovHqHD248aCOyZhRXcE=;
        b=zyOcIH40iOB8GD0Ii+xu2Z6Ug4XWceBAqjmAqZhGWgmm6xgeIbgagjnQoG88YBOM4B
         a+qkj+VhxxLQyrZroLCwEPQ8FXM2y9x1rt+DqNuz7LKtUNrHW+4NfZFKXxDpf0Wah9NA
         UYMSKZwdhcnzFLfj32N005BenSx0opKod1CHgfLxiWxgC3//IK3lsKUjENmN0GO4DCeh
         mfxxhXNpoykBsel0Dkf8JmxcaErR6b2TUTzCf5JrSjxtdYohkWCr84VLqGXZDp6x4zOP
         agb9QEs1cjQuaV0c+8V02Y8AWO48P1yypguy9c9nExUlonX5PiaGPacnsrxm2V2eIuEO
         yEWQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b="gjUL6CA/";
       spf=pass (google.com: domain of onenowy@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=onenowy@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :sender:from:to:cc:subject:date;
        bh=LpniYVewQDWAA7mf2emWltcOovHqHD248aCOyZhRXcE=;
        b=TwadaCQY7+YjsoR5u5jFPvwISdxSjFJF06aDEM39DN23I85veX/1oPAeal2qxQtTw6
         PytffMubFJgon4UEzv0KLIxq4RQEF66vhLOjahvkwlc+011w6fiu3GdXe/MEvZce4wNP
         0KQhSOuqh5rP277sZZA04e07CAp2RXyXVyPc4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-gm-message-state:sender:from
         :to:cc:subject:date;
        bh=LpniYVewQDWAA7mf2emWltcOovHqHD248aCOyZhRXcE=;
        b=Gselt3C91n4GgyksBqN6j0e7BhWSVL6zcLqOTNFezy++A2cz0pIDXPtE1HgomrUkUM
         V6LE0AGfh7nRjiuF7SCq3UN8JYaFpUGL3rFeYcbdWDtqX2zAiQs7J8vTTk0Ik7r1sM2j
         ZChYpYyyMpj7YEyQwo/pLmLXAo0hJv7sGz32u2Ar5UNF/JVHgqUFTJzY40nw+6YldCmC
         avmsi35g5+mPs5Xf0JBfMiC6KoE3elVzc+Ee3VroDuut2h5wJTumvJfAPts86EtneE6J
         9Jfq07lhJU04oJrNsQqrDcTXt+QBHIDeIXwtVDKKssxwQr0wdgeSUPdL2h/kPvM8unM9
         UJlw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo17gBkJKPtjHHwvBL5xA7NcQDZA89vbe5k+0F8Qtuo2OtyU98iv
	hxOuzy1MTCnsKcbaRqHEPqsyWQ==
X-Google-Smtp-Source: AA6agR56avhDtsjTLXPFdw5YY2SsQv7wDpmLrr9KwwX7HTOYKm2+cep5QqaR5AvtKpe75oFPswPugg==
X-Received: by 2002:a17:90b:1b4c:b0:202:c05f:6e7b with SMTP id nv12-20020a17090b1b4c00b00202c05f6e7bmr3591491pjb.200.1663069776845;
        Tue, 13 Sep 2022 04:49:36 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:902:7610:b0:16c:2ae8:5b94 with SMTP id
 k16-20020a170902761000b0016c2ae85b94ls9772054pll.0.-pod-prod-gmail; Tue, 13
 Sep 2022 04:49:36 -0700 (PDT)
X-Received: by 2002:a17:903:2309:b0:176:be6c:d4df with SMTP id d9-20020a170903230900b00176be6cd4dfmr30710369plh.4.1663069775936;
        Tue, 13 Sep 2022 04:49:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1663069775; cv=none;
        d=google.com; s=arc-20160816;
        b=nWi0CPnCkuWEOQfO8//HytXtHBO5lKk1XgFqtzRkKIgWotDPY900a4sJBlXZtWFZ9R
         EIs4BU7uB64BaUr+EbEgrPa6rNBqoVhJiZ+PL4oFJM7p11s7hecQtMDHbN9ROwdLcMgZ
         vngHEPSGjGNhCS1PqtBQFWpCqYl8u0bQNRfHhecauWQolywrGsQsH3YhP+I6A76Hkn+E
         e0lYSzc87M4HFac+oxA01M4+Uzh6u6vhaAqT99gk6qtnYxUk+bX9zWzxG4KnHEen2NpU
         rTx8oJmoJgiPzYqvuBlzSlSEa4hALfTbnLFvZF+GbO/OORrKcB86jld2XdNYsMjL2q9E
         JBXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=paI+cYCqGHdRW7WJHsWMoltqh+MJU/tBCstn49ikwxE=;
        b=zOV1ZC0PmuhBWFSNiwT7LKVH+mnpN074OxcHjYzKRzpukS6BiHDaRL5sW6CilC3nhG
         Nyf2PnL1CiWXIFwJeRoUjajWH9AL9YFMeusIrkpUISdVGdwvbPHVotZE9bz+JsEiAl/U
         Trv3EW9j87m0mT0oFqezN8U5cdr9KYfBZ8mlnZjJArFpTsVNeUbJbkoCviMkuZDqWS82
         oVhpbiCDSh2Lkw6xqh1H78+T+n8b7WtLS+5lRrV2/AvAd2dc3vXXUsWgnWXTT0UyHc52
         aOpxiRQjGT9iCGYvQt8BHFEqxA3xbbsmBo/Ro1ZYc+xu1zyI9WDc07ilVlSYc+shC3YS
         cE8w==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b="gjUL6CA/";
       spf=pass (google.com: domain of onenowy@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=onenowy@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id c3-20020a170902b68300b00178176688fesor4451444pls.150.2022.09.13.04.49.35
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Tue, 13 Sep 2022 04:49:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of onenowy@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:a17:90b:30d0:b0:200:22a4:bfcf with SMTP id hi16-20020a17090b30d000b0020022a4bfcfmr3516627pjb.181.1663069775570;
        Tue, 13 Sep 2022 04:49:35 -0700 (PDT)
Received: from localhost.localdomain ([110.46.146.116])
        by smtp.gmail.com with ESMTPSA id t2-20020a634442000000b0043057fe66c0sm7480826pgk.48.2022.09.13.04.49.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Sep 2022 04:49:35 -0700 (PDT)
From: sunghwan jung <onenowy@gmail.com>
To: stern@rowland.harvard.edu
Cc: gregkh@linuxfoundation.org,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org,
	sunghwan jung <onenowy@gmail.com>
Subject: [usb-storage] [PATCH v3] Revert "usb: storage: Add quirk for Samsung
 Fit flash"
Date: Tue, 13 Sep 2022 20:49:13 +0900
Message-Id: <20220913114913.3073-1-onenowy@gmail.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
X-Original-Sender: onenowy@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b="gjUL6CA/";       spf=pass
 (google.com: domain of onenowy@gmail.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=onenowy@gmail.com;       dmarc=pass (p=NONE
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

This reverts commit 86d92f5465958752481269348d474414dccb1552,
which fix the timeout issue for "Samsung Fit Flash".

But the commit affects not only "Samsung Fit Flash" but also other usb
storages that use the same controller and causes severe performance
regression.

 # hdparm -t /dev/sda (without the quirk)
 Timing buffered disk reads: 622 MB in  3.01 seconds = 206.66 MB/sec

 # hdparm -t /dev/sda (with the quirk)
 Timing buffered disk reads: 220 MB in  3.00 seconds =  73.32 MB/sec

The commit author mentioned that "Issue was reproduced after device has
bad block", so this quirk should be applied when we have the timeout
issue with a device that has bad blocks.

We revert the commit so that we apply this quirk by adding kernel
paramters using a bootloader or other ways when we really need it,
without the performance regression with devices that don't have the
issue.

Signed-off-by: sunghwan jung <onenowy@gmail.com>
---
changes in v2 : add signed-off-by line
changes in v3 : wrap changelog at 72 columns
---
 drivers/usb/storage/unusual_devs.h | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/usb/storage/unusual_devs.h b/drivers/usb/storage/unusual_devs.h
index 4993227ab293..20dcbccb290b 100644
--- a/drivers/usb/storage/unusual_devs.h
+++ b/drivers/usb/storage/unusual_devs.h
@@ -1275,12 +1275,6 @@ UNUSUAL_DEV( 0x090a, 0x1200, 0x0000, 0x9999,
 		USB_SC_RBC, USB_PR_BULK, NULL,
 		0 ),
 
-UNUSUAL_DEV(0x090c, 0x1000, 0x1100, 0x1100,
-		"Samsung",
-		"Flash Drive FIT",
-		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
-		US_FL_MAX_SECTORS_64),
-
 /* aeb */
 UNUSUAL_DEV( 0x090c, 0x1132, 0x0000, 0xffff,
 		"Feiya",
-- 
2.37.3

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20220913114913.3073-1-onenowy%40gmail.com.
