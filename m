Return-Path: <usb-storage+bncBDUNBGN3R4KRBYOQXDVQKGQEQR3HARQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x446.google.com (mail-pf1-x446.google.com [IPv6:2607:f8b0:4864:20::446])
	by mail.lfdr.de (Postfix) with ESMTPS id AD4B0A642D
	for <lists+usb-storage@lfdr.de>; Tue,  3 Sep 2019 10:46:27 +0200 (CEST)
Received: by mail-pf1-x446.google.com with SMTP id z13sf10556935pfr.15
        for <lists+usb-storage@lfdr.de>; Tue, 03 Sep 2019 01:46:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567500385; cv=pass;
        d=google.com; s=arc-20160816;
        b=GRWAfS1gD40RqfGqmvdIjeWvaRsFwUty3xPPXd9WWOXM79kwd+5sq9OZOIufGXQcGc
         1X5ZQkzL8Tsnj+K8me+5oMVkdV682iWvCOrvUp9QKvlJzu+s4pIS1Bs9/c9gjH8o79YP
         6DvES1sksjm4rp/YcJ5wlhVyXUuDY/z+KUgq11YTkd8BJiATcA1mMciC2eKJkfdj3Yex
         45pq0eYUPlLhebYCoq5E992IDEHO0YI0PD3J0NKUB3i4u5ytTb6N+h+iHOJccCkzUr5S
         DBgoWcKeVLj/X6S/qcPs/BcjEwvDcDkW5Tkva9uA4hrnMgV+952uTDeAMZVX+ZJP/5MJ
         4EPg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=iqzE5I4Yd8fWhd7/Pu3swCnIksVOtx5ye9t3HHZCrbg=;
        b=m6MIVp2pujjvaauVFzjBizQREKtywTIhQ+m3B2M7Res5qy2IGZDz3dB1C4NOT495UE
         T0/aRPneDQZQmqmKpdzjS+McYvv3Eegqw4qDNMK3LH8TpN43rAwADu0yMCxLlrR5a5hx
         o/13NMAME7l1K1i+z4M1+p8AHwSTvR/A+Bsb8LvmXJUJ4JRHEpX4GIRshbNGFpDsHQiq
         gf8kcRsPvBzw7h3xUDZx1JC1d0SpGqHLccef2gbbV/bDSo9aKB3vloqnS/fbZfcAif/Z
         22VuG6XFetK4YaDVXeHe04REoZAxL5R2ZOH5zKtdub30L/GCx0yZ32oMsOpzRrr+kJyR
         Umbg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=JchuszWf;
       spf=pass (google.com: best guess record for domain of batv+680e2818d6643897e706+5854+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+680e2818d6643897e706+5854+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iqzE5I4Yd8fWhd7/Pu3swCnIksVOtx5ye9t3HHZCrbg=;
        b=ZVPWUBaVLaVp8Bjzzw20Yat8YMwcLzkyAOEo+m6fU3aWNRRwll8s2dvOnjJ8ChVrnf
         466/Q+TGQBwzegvVts/LhrfqyiLFmyezLeVxv2Yxbv8Y4DFLo8fNJRUqT41YycxU/sei
         Mow9sOGIN1JwmXz8qkjjBAZ8b2OlpbQRb5C9Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iqzE5I4Yd8fWhd7/Pu3swCnIksVOtx5ye9t3HHZCrbg=;
        b=Rr9SHT5GAYW78fkTMJogFBp1HrKx9b/WoY7nUlCj9JlDxHj4va9ECZDor+6FQYl7G5
         daXJgUgMHtfC0mCUMyb8eO1YNWfN1FspSoGGVj3qQahPQP8UQ2MeC5gLW5cGKDOoVgN3
         QBHHADFlKp7J6v7mfx2oXsmCxGfldWVkb+uPjVDznlpgceFS5g2W+d3KxYSFAz3ChPha
         Q03smkvvUKkkJAu9R+F32bId9z3BbAckWeIi8/uKtxNq0pLWtdYmOrQZTPvPAl+cyRzT
         okTD7jfg6ayqCBRT06bxOiuiA+YhTjNJaKdz+Z202+M8HfrNHwVLZAP/LJ6nz1DRy65/
         hXQQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAUnNKi0IspoDEOdPLdkM8/MB/6FXQ2V8EWHL+UD10vofslRqrM+
	B88CmlhWj7/7WfcmqG3EiKE6Ew==
X-Google-Smtp-Source: APXvYqwJQB1zbhoGmYZsHZls2H9isYlb08AK97X467uan0hr47Fee4Y8EetgOG1s/TxEto5xyO8skg==
X-Received: by 2002:a17:90a:7783:: with SMTP id v3mr16989302pjk.109.1567500385489;
        Tue, 03 Sep 2019 01:46:25 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a65:4302:: with SMTP id j2ls3851156pgq.6.gmail; Tue, 03 Sep
 2019 01:46:25 -0700 (PDT)
X-Received: by 2002:aa7:8b01:: with SMTP id f1mr7234576pfd.173.1567500385017;
        Tue, 03 Sep 2019 01:46:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567500385; cv=none;
        d=google.com; s=arc-20160816;
        b=PGKSTQ+FA6m+zCOIgv0gyk7JwQDsKfNWVSdnKAa5qaNVsn9/t4sY/UFExKehgA0spU
         iC8DBFU555WyDLELWkJrLZtvVdSRJ3/rjKtHhkLSw35nMuD/c3CCvDtEzyn4ovxAvs1E
         uJxrhXlzsXyJqWxiPnuE/j23ZZxxW0clf2OI1uFjbVo9Ow1S9refRpDnBttYow5ohCeT
         v9NoA4Ss7kicM1+LXUvZPIpUfWJKXpsMlaFNe3v1a6II+b/z4EA0vjp48+6iFDwGeQnb
         t1dbtq74LG1250uag9YRj1RIU0YXrUzz7X3B1nQ0EznOb6EzO8RUfSPCTLWTKHuQvXzT
         PD7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=A2X/lGbY6ny4Qh+4tWFl8dKaRYooojdfF0WMQcNmeAE=;
        b=bACsFtxzTaSmtHg9YQcO7gDFJHxkwC7U5QGvTlUfwZfnyJ+l7ckCcWKxiEf9L32FfV
         YuvaFyX3jEhgDGSQKC9AH0VeEmRDzWr9EFfyTfme8cV8YUbxhznGgomTRaiobp5A2qYA
         KwZbotLEfFEUG4gQlrCHApi1X1s4C1dVCVc5Ff3kStAiMADrUgPmxGjWrbeiJr4e+8WL
         iEAIFkp5gcuLou8GutZhFkgbrvwL1q/OkOdSVVVD4bgS8yJnrcYDmoTicFhUAmZu8pMC
         A7cBQ/tN9P/9qocostzuYn7q04tYwsxA2iiYFHP6MdoOlBJuwgxqX/e1DW0F524mf73R
         toMg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=JchuszWf;
       spf=pass (google.com: best guess record for domain of batv+680e2818d6643897e706+5854+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+680e2818d6643897e706+5854+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by mx.google.com with ESMTPS id v185si14053672pgd.340.2019.09.03.01.46.24
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Sep 2019 01:46:25 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of batv+680e2818d6643897e706+5854+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from clnet-p19-102.ikbnet.co.at ([83.175.77.102] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
	id 1i54SD-0003qv-58; Tue, 03 Sep 2019 08:46:21 +0000
From: Christoph Hellwig <hch@lst.de>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Guenter Roeck <linux@roeck-us.net>,
	Lee Jones <lee.jones@linaro.org>
Cc: Alan Stern <stern@rowland.harvard.edu>,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org
Subject: [usb-storage] [PATCH 1/6] usb/ohci-sm501: remove the HCD_DMA flag
Date: Tue,  3 Sep 2019 10:46:10 +0200
Message-Id: <20190903084615.19161-2-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190903084615.19161-1-hch@lst.de>
References: <20190903084615.19161-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20170209 header.b=JchuszWf;
       spf=pass (google.com: best guess record for domain of
 batv+680e2818d6643897e706+5854+infradead.org+hch@bombadil.srs.infradead.org
 designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+680e2818d6643897e706+5854+infradead.org+hch@bombadil.srs.infradead.org
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

This driver doesn't support normal DMA, only direct access to its
local memory.  Remove the HCD_DMA flag to properly express that fact.

Fixes: 1e4946c4412e ("usb: add a HCD_DMA flag instead of guestimating DMA capabilities")
Reported-by: Guenter Roeck <linux@roeck-us.net>
Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/usb/host/ohci-sm501.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/host/ohci-sm501.c b/drivers/usb/host/ohci-sm501.c
index 0b2aea6e28d4..c158cda9e4b9 100644
--- a/drivers/usb/host/ohci-sm501.c
+++ b/drivers/usb/host/ohci-sm501.c
@@ -49,7 +49,7 @@ static const struct hc_driver ohci_sm501_hc_driver = {
 	 * generic hardware linkage
 	 */
 	.irq =			ohci_irq,
-	.flags =		HCD_USB11 | HCD_DMA | HCD_MEMORY,
+	.flags =		HCD_USB11 | HCD_MEMORY,
 
 	/*
 	 * basic lifecycle operations
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190903084615.19161-2-hch%40lst.de.
