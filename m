Return-Path: <usb-storage+bncBDUNBGN3R4KRBYWQXDVQKGQEHK2ZPIA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-x547.google.com (mail-pg1-x547.google.com [IPv6:2607:f8b0:4864:20::547])
	by mail.lfdr.de (Postfix) with ESMTPS id 052B7A642E
	for <lists+usb-storage@lfdr.de>; Tue,  3 Sep 2019 10:46:28 +0200 (CEST)
Received: by mail-pg1-x547.google.com with SMTP id z35sf10504750pgk.10
        for <lists+usb-storage@lfdr.de>; Tue, 03 Sep 2019 01:46:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567500386; cv=pass;
        d=google.com; s=arc-20160816;
        b=WgBa0NwZuzVBSrNHfuH03SnMj2U4/SHAPn9LiZ7ANE7mySjZuoSLOq4DvBMBT28hqX
         Pn104ngnWBZq2DvdrtO5NJIrkORIlqPizyvMR7WfU/2mzxGrJUVtHPsxvg6rPj0txf1L
         W/fsDZUSh5LGwz5pXYZjM6XaiXPTlQIzb4EYU5fdhi1FiHftRUUHAvHYYohpk8jm/rjh
         QXXiovovOOK6ihWGgSBs4KU6SJIwT6E5nIjjgJkwouLeaP/xClb8zxM89sdU/lPKaJ4w
         hea9ZkTW4719FMz2+2bwNCeU7Ryv4Lz6gDE+D2hNiUoZkYvHAjOiKrQINMU4xDclFe6Q
         FjAA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=8vNNDmRKZu+feFS7fzdOBTWXc9fpzqLl0Nfls2KXySs=;
        b=rlVJTIp2nGZ+zD2FWGotq6x5HH/qVnzVtY296wMPHvb6N8PdkvIuDFB0NOPyZajXEt
         cxAjAgA+FRACf7NZZH2YzbqDupn12qGFEkqxkl7KdiKp0BxYWR1WS0dzDOsVbCtx4URN
         Ga/fx2FHOt5PebCLM7NNHajYyHZSftHhOgB5UTA452eZuckSnQ1tyaYhfqLroM/UO2mL
         FwdkcGjQ92GvncRoP5PBCOacrroi/qCtcWiOXrLO2cbMYvOekYdVaj4ySpfJSStb5KWF
         9ewdNhWeZE6zYtArGwWVpAGHAwIliAg+8bj1G8BC7KHDNyoWsgUMLu0CsNOUN9HP3OpR
         XNVg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=QlJ6KAk2;
       spf=pass (google.com: best guess record for domain of batv+680e2818d6643897e706+5854+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+680e2818d6643897e706+5854+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8vNNDmRKZu+feFS7fzdOBTWXc9fpzqLl0Nfls2KXySs=;
        b=YIlO9iUOGTqS3iQ4kDFIng4p1X59SNM3JOnPrv69BZ1Jt3e1xRSM888Ww22lgv7bgI
         Uu3QBD6ZUSMc63rBmy/13Ubn9PAEfh7UIakCdAZYRnCDtLjn1xAQdGAlTOSgahp4ilX8
         wgrTGtiIRicxKWbn5S9i3WYI62a4we2WKhR/g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8vNNDmRKZu+feFS7fzdOBTWXc9fpzqLl0Nfls2KXySs=;
        b=bm7s97rAnO5FGf5o8msTtHCQ1WBHWG4RNyTnNW+D2f6+XXSmK45TkGvfZx3PVfFjP+
         oYNJepDEiByV7CvfaeWS5CRo/ZXUavmRfgKXyz1ZftrwOHry5GtWpmWlz4h2ORGVIZO7
         608SfS6+vJSHDNhIUDH+1Dp3fhusnnUGZWICFXarevVqmJhsCIHbpfr+sgK5S9R2Ygn8
         u38ES5V33pyebIzahzr7FiMYxXmoZ8eA1jntqmxeNMKGQMgbKtsL9YbmsWFn+guVZwXf
         b73knNBzpFbG7BxlfNMcz2jKfvPXQ662IHsuUqZc3LDVMIfVEP3wHJiDUiBSffdrmziB
         qO+Q==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAUYqcBXvK94+JpTg2ySYo46Cg3GQZTzSnecyU+XsAkm8+68PAat
	2Fu5FG9gyXAZpjRLGaLc8Wd+Ag==
X-Google-Smtp-Source: APXvYqw2A2cmdl9xd+YYaqzXIPBh9xbXwXigh56p3g49SgWGoxBoqSQc0wjo45a7wmQDbLHGnFoGcA==
X-Received: by 2002:a65:68c9:: with SMTP id k9mr29113295pgt.28.1567500386594;
        Tue, 03 Sep 2019 01:46:26 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:628c:: with SMTP id d12ls577678pjj.3.gmail; Tue, 03
 Sep 2019 01:46:26 -0700 (PDT)
X-Received: by 2002:a17:90a:c20c:: with SMTP id e12mr5968956pjt.14.1567500386194;
        Tue, 03 Sep 2019 01:46:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567500386; cv=none;
        d=google.com; s=arc-20160816;
        b=KGwnNu79RdQ7rffDJO2jnmWT8DAdNxjqdD861tYa543pN6aoDAvgM9ZUomAK+dYwsV
         XrsbN8XnIVmQGcYC/DTfTYJx+wmYqywyU6TymOxtxM1kMao0FcCGRRbXFJUINe9Asece
         8AR9gxprmNZldsVbdGqJ/RAG2FJ9W3Ts8YLV/oS1Wsqsaz91XhPs31ZOM8gHJ9Fk8H2H
         3VKiNPy5vM7iY3SAVuPC3ozMxyKfj36/jH7obuajsiq2CRT1RGw9t4M3AXeCLSyTaT68
         QYvFkHPgQUmozWyFVyhFgcRYb4Aza1brTPDQa8Ekx5cxah0NfAVuUGWSIxxe+tSkobqK
         GfvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=oKltuC+bB0pJtvp7qUclBSom6VtgzauxKPZ6u/A2tVA=;
        b=gwRr2cVbU1Tsv12KKO8WddmmImnVGLA2FKnYzPIPHRnVBb8uwrC+BUfj71ggs6mFmx
         +++VY1CHDoEGBu+mKrTCXJp5bIlqRnQ3NyLh2fPQnd5lb8EYi9lcAkSHjHJ5Cf+oofi1
         ptj23NYJapmQnihFPuFMJOabUHntlFMBPw3lK3MLjm8iQQnaQipU4wSzRry9i+eeGd2r
         290+ea+S0E1TSncg2QD3gOjZvaunEcZgFC8jfzGcowJKuulmWiNemMv93z6Nsu/yF2fl
         gG2aUQOnMtPnzqvQV4D6pVFd9gCQlo8FeQ04SXhnreoulHkKJs4O35+rYKCCPQkwO4a5
         y/FA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=QlJ6KAk2;
       spf=pass (google.com: best guess record for domain of batv+680e2818d6643897e706+5854+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+680e2818d6643897e706+5854+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by mx.google.com with ESMTPS id e2si13819416pgf.256.2019.09.03.01.46.26
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Sep 2019 01:46:26 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of batv+680e2818d6643897e706+5854+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from clnet-p19-102.ikbnet.co.at ([83.175.77.102] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
	id 1i54SF-0003rU-BK; Tue, 03 Sep 2019 08:46:23 +0000
From: Christoph Hellwig <hch@lst.de>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Guenter Roeck <linux@roeck-us.net>,
	Lee Jones <lee.jones@linaro.org>
Cc: Alan Stern <stern@rowland.harvard.edu>,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org
Subject: [usb-storage] [PATCH 2/6] usb/ohci-tmio: remove the HCD_DMA flag
Date: Tue,  3 Sep 2019 10:46:11 +0200
Message-Id: <20190903084615.19161-3-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190903084615.19161-1-hch@lst.de>
References: <20190903084615.19161-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20170209 header.b=QlJ6KAk2;
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
Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/usb/host/ohci-tmio.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/host/ohci-tmio.c b/drivers/usb/host/ohci-tmio.c
index 8edbacd3eb17..d5a293a707b6 100644
--- a/drivers/usb/host/ohci-tmio.c
+++ b/drivers/usb/host/ohci-tmio.c
@@ -153,7 +153,7 @@ static const struct hc_driver ohci_tmio_hc_driver = {
 
 	/* generic hardware linkage */
 	.irq =			ohci_irq,
-	.flags =		HCD_USB11 | HCD_DMA | HCD_MEMORY,
+	.flags =		HCD_USB11 | HCD_MEMORY,
 
 	/* basic lifecycle operations */
 	.start =		ohci_tmio_start,
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190903084615.19161-3-hch%40lst.de.
