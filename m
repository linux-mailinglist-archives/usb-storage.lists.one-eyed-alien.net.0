Return-Path: <usb-storage+bncBDUNBGN3R4KRB26QXDVQKGQENIT3HYQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x646.google.com (mail-pl1-x646.google.com [IPv6:2607:f8b0:4864:20::646])
	by mail.lfdr.de (Postfix) with ESMTPS id 039EAA6432
	for <lists+usb-storage@lfdr.de>; Tue,  3 Sep 2019 10:46:37 +0200 (CEST)
Received: by mail-pl1-x646.google.com with SMTP id y6sf2101898plt.10
        for <lists+usb-storage@lfdr.de>; Tue, 03 Sep 2019 01:46:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567500395; cv=pass;
        d=google.com; s=arc-20160816;
        b=QK0peu4V7YQcIG7IGomVkJ7pDztdLYwtBnvKEsHBxt/XThayC8ZpIZ139F4vqA/zDX
         Z4GZppBLgtLjshZoubaquQJ/2iAGsRCvCT9mFucnAG06+Vfvw6po7LJ4L42FLke8O3Iy
         PAVCE12egwQ9f4sv3MmuysrpUERyDXhe/sQ+VwG3bwJ82GspdQomo2lITw4UaBz+Pyhm
         aUubx8l8z3CK2wfRDoec/LV+Re1shxIyD1VILpsnKgOhdcNdYBVLWzdVsyT4pkFTnwH6
         DxuuLjppoQQcC15+f25fQeOadMsjG4GUEYWRC4YcfYsqQiKya656xil+bWSLXSgXORl0
         Biow==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=3Ia7bastRvpBWwcXq/ZtTVweUhpC7UR8lUnMeunon4w=;
        b=o+MXKaRDmBmMUa4h6SoMaAMZo+iCSrJKe2iBuN45FfblR1VTIB81maOUbSh6XQ7ya1
         LMKFkhMwo7C61VwomF6kSImzibZ/Rbx7X6i4xHfD/a9Y9wegqpYnzGd0nZ9aB+MesFl8
         hqkarbyEQQHSkLbs8ILachda8VNV3jQovW1+s/NICJGhto9X6MfF+dcji17ICE0IobAv
         t9PJEnI/VxWB3MypBI8hmIo2TznJC1tc+PRMCGUZP7nBBDzs83rzfNp2w+OCA06x3biT
         fze7lpZY47yj0xjjOFxU+w9YJdlKqTXaXXwVWKHqAZY19+oVNz0LYxPHBSmZlaU862q1
         rkyg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=avP8nNbY;
       spf=pass (google.com: best guess record for domain of batv+680e2818d6643897e706+5854+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+680e2818d6643897e706+5854+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3Ia7bastRvpBWwcXq/ZtTVweUhpC7UR8lUnMeunon4w=;
        b=H1w8WMnLCCnCpE1X3ZhoUlO68q1DbJaH81q2z3KBSt12vjgYjVt7jn0jUqY5ehbmXz
         Ie8nxPQTL/oukwKdYDCSkGqbKOzraG1kAGGGmOCF+JMSSy2LXRHTpRzJ4F+B9kYMERh9
         PasgEKT6p+XwH8VVXq1kQEu008Y9I9+TFLgFk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3Ia7bastRvpBWwcXq/ZtTVweUhpC7UR8lUnMeunon4w=;
        b=ClGXMmKcRKwDl/MP1T3dSiwr87oNKOfWsDyZOHSfycObNaIhilq7QvWg4OS8sRGMxT
         KBX8HA7kFHFFJMf1cFoSVv0/3kILSBER1ln5TAB5AQBXZoVXHarxpJCVSQcNWF5adj3/
         +YhyKZ7aQJuABcw/AnfPqRoK1z6sZXBFYpjHJaxnQrPtKmDdMZWgfAnCoNHANe1bjKVA
         g4aHU5jurX10Soz9IZytjW31msb94z+zz8n+hwpGpJufQD9ZFB3ZJMkr/oiLYrfBld4V
         fuAe0T+haKgGwbM/B76RCbxy+O1DzhS6Fo1SUM5QDjQvsDxpHCYXnHbO+2e3d/ZseZiP
         CKIQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAVNkQqfH9QXPgxakGdnt9VF5eUqCJfw+IFJ5j4Usr2YdYWhlXOs
	FZILoldVPawJKxdow46Bc9VOXg==
X-Google-Smtp-Source: APXvYqy31UvxpYxDf+x5XE6gdsrKo2pfN8ev1Nekjm0DgF5ZCgXauzoW7jen4KTnLz2q1X0p1gYcfw==
X-Received: by 2002:a65:6709:: with SMTP id u9mr29173904pgf.58.1567500395617;
        Tue, 03 Sep 2019 01:46:35 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:902:8bc1:: with SMTP id r1ls892210plo.13.gmail; Tue, 03
 Sep 2019 01:46:35 -0700 (PDT)
X-Received: by 2002:a17:90a:ff15:: with SMTP id ce21mr10428121pjb.131.1567500395080;
        Tue, 03 Sep 2019 01:46:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567500395; cv=none;
        d=google.com; s=arc-20160816;
        b=EUA3Yfu4PMkO6ItZriv9l+K+/jX/3wY0K6nviY9aw/EZ1iVjlSOLnbRNxrgPAwrkU2
         Fl1s9lOrbZjwq+B6dlfwIw9Ho/FFrNaVGwoBD4vIrdqkHmPqGmAPBPT8MzO48rKcDO4+
         BzhZ9aHf/ZEgs4Gqyby+D1LsW2QX8h1/sJcyYTGCbUoP5e3gFDEKuP0wM/q/eP0/Ja/9
         jql0dWgyWxtr0n6C5giF7sBoKlJvv7OcH3pdW7R3MY/pLoc7xgpjZcV0a6SmuHem6SoI
         nVJ/rRlOP20SgR2A1VmaP8fAcukKpNqbMAAN56yGBsHUf6ooGDmyFGbMk1O5PwYgv/gg
         k+3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=6pguZUqffeAIWG1P6RYECfJD+WZFqcyfjatQr1iJ62o=;
        b=HVfApaayOZBG6TJx9hRzxtmMSOOo+8yNKKPjM/X+ThDEvbX40HsxMfTZBS2Ut6l1hq
         OUXOKXlVgsG2AsVcFL877jBS4NRXmvLlpiEmAFHAimPs9pyrGmu4VaAa5nwoYDOZhACw
         7aUVkoqH6+vAA5XwzFgGgI4c8y9csbpZl1QWJLpSpo+JqcS+Q0JJi1ZM8L7MaY1PLzNt
         wMLcA7VyXoSqftmZixjpSwcUy8wfxgaYYbzmOG00nJyeONqbbCD6qJK10aSjmh9UkBq+
         zD1ErDF8DLfQMAMclMoecH0hyuNTD6azTBxJ3Yr/zFatNRNDwhjQsB421M4gSmjeUafE
         assQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=avP8nNbY;
       spf=pass (google.com: best guess record for domain of batv+680e2818d6643897e706+5854+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+680e2818d6643897e706+5854+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by mx.google.com with ESMTPS id k13si13779416pgt.285.2019.09.03.01.46.35
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Sep 2019 01:46:35 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of batv+680e2818d6643897e706+5854+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from clnet-p19-102.ikbnet.co.at ([83.175.77.102] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
	id 1i54SO-0003tL-80; Tue, 03 Sep 2019 08:46:32 +0000
From: Christoph Hellwig <hch@lst.de>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Guenter Roeck <linux@roeck-us.net>,
	Lee Jones <lee.jones@linaro.org>
Cc: Alan Stern <stern@rowland.harvard.edu>,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org
Subject: [usb-storage] [PATCH 6/6] mfd: don't select DMA_DECLARE_COHERENT for
 the sm501 and tc6393xb drivers
Date: Tue,  3 Sep 2019 10:46:15 +0200
Message-Id: <20190903084615.19161-7-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190903084615.19161-1-hch@lst.de>
References: <20190903084615.19161-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20170209 header.b=avP8nNbY;
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

Now that these drivers use the usb localmem pool there is no need to
select DMA_DECLARE_COHERENT.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/mfd/Kconfig | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
index f129f9678940..c8cbde59bbf6 100644
--- a/drivers/mfd/Kconfig
+++ b/drivers/mfd/Kconfig
@@ -1105,7 +1105,6 @@ config MFD_SI476X_CORE
 config MFD_SM501
 	tristate "Silicon Motion SM501"
 	depends on HAS_DMA
-	select DMA_DECLARE_COHERENT
 	 ---help---
 	  This is the core driver for the Silicon Motion SM501 multimedia
 	  companion chip. This device is a multifunction device which may
@@ -1714,7 +1713,6 @@ config MFD_TC6393XB
 	select GPIOLIB
 	select MFD_CORE
 	select MFD_TMIO
-	select DMA_DECLARE_COHERENT
 	help
 	  Support for Toshiba Mobile IO Controller TC6393XB
 
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190903084615.19161-7-hch%40lst.de.
