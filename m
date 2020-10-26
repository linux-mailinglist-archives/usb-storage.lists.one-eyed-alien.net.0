Return-Path: <usb-storage+bncBC27X66SWQMBBZF33T6AKGQEHH5CFZQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-yb1-xb48.google.com (mail-yb1-xb48.google.com [IPv6:2607:f8b0:4864:20::b48])
	by mail.lfdr.de (Postfix) with ESMTPS id B8641299669
	for <lists+usb-storage@lfdr.de>; Mon, 26 Oct 2020 20:05:09 +0100 (CET)
Received: by mail-yb1-xb48.google.com with SMTP id b7sf4231204ybn.3
        for <lists+usb-storage@lfdr.de>; Mon, 26 Oct 2020 12:05:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603739108; cv=pass;
        d=google.com; s=arc-20160816;
        b=sO49Z2gFlem3gkNRtWP667vlbwoFM7m0EbuEJXynR4N+eSyZwFThGjVYjXKkhLxhW9
         /hlPyQ9an7twPCL9b8pJmC4ZRx3z79sfKaVaw6ycA9CmV0adRWMYaxZdpZVo5hHbd8Nm
         40YzWYi9zTbhZe+SW8ed2iLw8PStxXMvCMzRUSmaGaGXwqsQZ/0TVMtsrcbO7cR4QKZL
         2aeZ71EKenMLHiaM0Y/Uc5DVizN0OIQs7wq0SouNbI9f3ON0RaKwlMZghIe5QSsD5Ai2
         +0/wBUFkMSsE5EqKD+XUPNMUZDxoqQBmgjApXph5iuJu6uM4GW1hBIDZzuf/1nU9Wc/0
         qSUw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=AxLdxBVKMR9/xQm62Z8s+whqIc0uqGsfpRwofGYSaSo=;
        b=xb/2BbB3BOKaFCyl98ODqek5F1dkBer9a2nsmYKFqS0B3xHtULjp3O9lLhJPTXHf84
         2g6M+sWtbTqSCXj5NcHyNkwuQLlkmzkFYZqlGuGujPSH/uYDaMRG0rU0Zkja5gajYc96
         1RAHhjq0HqNuK/H0B7CnqmVJbiOy/cUOQ1Fh/my8UepP+bIyVhoPgaxcURiy3W24JI44
         unj14qCcTDFEJrTSZpbyt3S3ru0Ug5L3G8U+FKJyq3Gzykf5JzmwVl3c0GmgsBLoO9My
         qNeIWWIOOA0Hrd3g37moWokaFgcoOoLZ4iN3P91vgNsN4XUkrHcDWr+u0fMZVAdFQFSD
         X6jw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Xh1Prg5S;
       spf=pass (google.com: domain of trix@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AxLdxBVKMR9/xQm62Z8s+whqIc0uqGsfpRwofGYSaSo=;
        b=NOxy+7ozI03cmaAskLK++iRJ7ckv2PmbUpQDQBIRg1M6hIprcv3FvHPD4SOZen/rhA
         qowjgPDdNm/RNHnFwaIX0tb1V1sXqSz8hRSkrtfZhct9yjpKiH6oi5i0MA5eEfDz5JkI
         HIhlWpJD1Huaik5j5kVcqtmnTXwe/f91WTe50=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=AxLdxBVKMR9/xQm62Z8s+whqIc0uqGsfpRwofGYSaSo=;
        b=SbkS1/LLaOM+wHR7ocHd9mOBKfV0ZcLvuWDua7XVmLXSfhXwVGGG/Yfiy9VLl2XPkS
         obwA/WJckq9JeJ/NTQrIVTWBeElPgLB98dkermKpzDKu0l63xmReyswRMMUkA728Yf26
         O+fSH2EOfwYi0XTjVFhEDjWavbwQhvuc+krz6+08uixpc513PkUTWaR3faRQsCvR0EEs
         yh3QYI6Sukjya7yajbnLqhXp5EFVMI9RkE5SSUrZhv93LbZFVbN4dW3t2us5gEBkgeRk
         tv0yeXTNh761yE6RGgmHZGsUWHNxdsre3LdU3+zzxoKCiZAjJ++zVRYBWJ33hkehcUlW
         akzA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM531LR9iDPYBy9i/KtqzAkZD5bILK439BUo+kx2zy5olGIO3/J+AA
	hvMwCJQyjtjGOx5ceR2g4aJM+Q==
X-Google-Smtp-Source: ABdhPJwF2v0YKxAUhfF+UbetYXtwmr2RCrl7mjCjE+aaQ3ywGIT65w+WOuzcWAy4kfNrgn7wv2ZxBA==
X-Received: by 2002:a25:8686:: with SMTP id z6mr21711175ybk.480.1603739108574;
        Mon, 26 Oct 2020 12:05:08 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a25:df0d:: with SMTP id w13ls4597075ybg.11.gmail; Mon, 26
 Oct 2020 12:05:07 -0700 (PDT)
X-Received: by 2002:a25:26c5:: with SMTP id m188mr22906222ybm.408.1603739107804;
        Mon, 26 Oct 2020 12:05:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603739107; cv=none;
        d=google.com; s=arc-20160816;
        b=egBVnNQmuL4LfHoOVblOG036+hHMGEJ2ZNeCKeaonmOyrTiJZxNqtLd5vrFkmcxOLM
         b9X9DMInI0bjfYi7pUvf9Q70sizAqpPbpdN3rTTjsdyWmfV3/+kuVfqTlcvlKUEhHVMZ
         5gyJmg3tgvGTRBX3eg8eT99Px4qqJD1KeuwAvyPENbUyNh4vAduG7jD9C1pAOlWacyB0
         8pBeh05051o8n8a8oLl2LMAKFNqp/zLhXJn50G8ZYOrZomJK2S9CiR9isdGhko11nlAr
         la6W08Vq44/LXgKWeExenxb9uC/7e+lKlwsVl9drtXGrL0UZRIrv6mWq3nR1Lq7T7OqM
         0wSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=CeSxyJXbIAWmg9ma3wabvh6TND1xY66CvqM05CqNLic=;
        b=tnJoNETPyADMl0Pxomx7e83/5qTvvrNa3vq5rU5O7VrkFGBYbvyXqsk7ZePL/zciIy
         0dLNsnEEoi9OaojMDnaj1CKaC0YWWTyLujZIhOBsaOSXYo2NGP/JigH5/dO/bzhCzU0W
         GJGac2aM4vmw+ehXrPM+c4cj+Hek275nDPELr/EyRi0/9do8ObyeppEj3udZAuqqUyLo
         pkx7f8QhK8eA6OTFEUZ87Vtm8D93FGLIzzbBs1P3rBmtOocWJlpXpHXMxtBaAPJWWAmj
         E3Dh2qVm+HoMsc5jxvfdkvyhIq2eX1gipQuJXeKrPDsL4NkaDtpaj9MWQZUkbsZxjs42
         XSVg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Xh1Prg5S;
       spf=pass (google.com: domain of trix@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by mx.google.com with ESMTPS id u64si10987505yba.54.2020.10.26.12.05.07
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2020 12:05:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of trix@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mail-oi1-f198.google.com (mail-oi1-f198.google.com
 [209.85.167.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-308-SInE4tHiMmK33LvsoyWBhw-1; Mon, 26 Oct 2020 15:05:05 -0400
X-MC-Unique: SInE4tHiMmK33LvsoyWBhw-1
Received: by mail-oi1-f198.google.com with SMTP id y8so5869725oie.22
        for <usb-storage@lists.one-eyed-alien.net>; Mon, 26 Oct 2020 12:05:05 -0700 (PDT)
X-Received: by 2002:aca:2b05:: with SMTP id i5mr15353017oik.57.1603739104684;
        Mon, 26 Oct 2020 12:05:04 -0700 (PDT)
X-Received: by 2002:aca:2b05:: with SMTP id i5mr15352977oik.57.1603739104214;
        Mon, 26 Oct 2020 12:05:04 -0700 (PDT)
Received: from trix.remote.csb (075-142-250-213.res.spectrum.com. [75.142.250.213])
        by smtp.gmail.com with ESMTPSA id s27sm3044196otg.80.2020.10.26.12.05.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Oct 2020 12:05:03 -0700 (PDT)
From: trix@redhat.com
To: stern@rowland.harvard.edu,
	gregkh@linuxfoundation.org
Cc: linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org,
	Tom Rix <trix@redhat.com>
Subject: [usb-storage] [PATCH v2] usb: storage: freecom: remove unneeded break
Date: Mon, 26 Oct 2020 12:04:57 -0700
Message-Id: <20201026190457.1428516-1-trix@redhat.com>
X-Mailer: git-send-email 2.18.1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: trix@redhat.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=Xh1Prg5S;
       spf=pass (google.com: domain of trix@redhat.com designates
 63.128.21.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

From: Tom Rix <trix@redhat.com>

A break is not needed if it is preceded by a return.

Signed-off-by: Tom Rix <trix@redhat.com>
---
v2 : split from original large patch
---
 drivers/usb/storage/freecom.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/usb/storage/freecom.c b/drivers/usb/storage/freecom.c
index 3d5f7d0ff0f1..2b098b55c4cb 100644
--- a/drivers/usb/storage/freecom.c
+++ b/drivers/usb/storage/freecom.c
@@ -431,7 +431,6 @@ static int freecom_transport(struct scsi_cmnd *srb, struct us_data *us)
 			     us->srb->sc_data_direction);
 		/* Return fail, SCSI seems to handle this better. */
 		return USB_STOR_TRANSPORT_FAILED;
-		break;
 	}
 
 	return USB_STOR_TRANSPORT_GOOD;
-- 
2.18.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20201026190457.1428516-1-trix%40redhat.com.
