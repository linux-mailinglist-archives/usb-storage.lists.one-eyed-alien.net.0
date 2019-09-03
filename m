Return-Path: <usb-storage+bncBDUNBGN3R4KRBYGQXDVQKGQESITDN3Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x646.google.com (mail-pl1-x646.google.com [IPv6:2607:f8b0:4864:20::646])
	by mail.lfdr.de (Postfix) with ESMTPS id 04736A642C
	for <lists+usb-storage@lfdr.de>; Tue,  3 Sep 2019 10:46:26 +0200 (CEST)
Received: by mail-pl1-x646.google.com with SMTP id j9sf4268357plt.18
        for <lists+usb-storage@lfdr.de>; Tue, 03 Sep 2019 01:46:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567500384; cv=pass;
        d=google.com; s=arc-20160816;
        b=Liahn19eyKYd+R3Mr9zvzvX1iMvBF6t9XGHWW1nL0As6zGHGVYARzcTw8kjmHi+r9z
         GHCG1vCGqyNBgRPSXEUYXnBQ4CrNTgWZB07JLPKbrDmHNmP7MT3dxfk0rGzvqd794JIA
         0qbjvvxmDDPgEgzpE4N791DThxMZI8rZaWmJUm5ac25ubh8SrNl9FRET/1AiroK1lOkO
         QPT5bI7DpBoNhdRC3tnkvXu7y+3MKFtWcrffIFCgVYCvefgDGlBoLCkVJ3k7k6WNoAvP
         F6UssKHkmUlPY2zK6ClZWbSG35t9SaxzQRDJ41Af+0vPhovHMvTAJlXWKqAoQV9dOIjH
         ROVQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=xaCzAyQV7em5banynvV6gg9bg3Ux6kNVzOIOut/fGpc=;
        b=M/YqJzVWXgTZkRLNRYnD1M/kzvG4EYThnyaz2x4af5UnhkqpXzUb+oog4SPLs6uVot
         1z3YiwMIQRXL9etS33/ixrjhUVv/20Rnh5PH/isgogw/TlMX1QBgwVkOnlUnqg+BL5MB
         bZYlviGCtFaUZqpligsKZKsnw+4xZoUcsCXfRY0wuMsBNhMdJkACqBWAoEPJv2TX1rDB
         NnXZ/lKlMNCyJfvpx7UieSklCDzBFpTIYdz4UNZktSexHWNBkFJ9U6WpzrE20esI0oyp
         zGEcBc8sYcmA/4QQo8PypBxmCLp8/Lf2v6AnTyJ72t3qEWu1vZ4xIh8ydIn81/zzuNtx
         EiIg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=FJTvHrbi;
       spf=pass (google.com: best guess record for domain of batv+680e2818d6643897e706+5854+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+680e2818d6643897e706+5854+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xaCzAyQV7em5banynvV6gg9bg3Ux6kNVzOIOut/fGpc=;
        b=I6eay8RGDihZgSwFIR/mBFU07lBK8srmbaScLoH25002R3iK5zWPvm50wRhB7vDApM
         NnQpnIT8c7ETj/dTPpYWCAoR1RqtnCNLEFQf6TLi4gxZFPlcszq5t+b+UMKFMX4g9aol
         tBjmEf+HQdeq61WzaVd6eELQJZpky6p6+/NKo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xaCzAyQV7em5banynvV6gg9bg3Ux6kNVzOIOut/fGpc=;
        b=jQKCoLfJD6OQzIBzqZJN5ukewBeDbZl6O8G4qdhBbNTlPcae66WXU/ZRu+a+6+0KLo
         97w+qZwm1JezX2io9GEjq0h/XOV+CqO4AX4aCKXqBfNwN+7x6POWwwN7YS+5UttqXBXL
         3jqa3qMqD7SYqsoLs8zYv1q+GzMUgLLUcwu9dKFXeA9VOMlai6gT4+LLyUUssvqsu+ZH
         67zVAvptv1l6ZXhQ2kdrWokptVYQC9uaCBDF7kPaInlUpiMgHmb3mrhHErhmEdQq2hxo
         C6iREq4eH8qFqIbFyuVaG3R0Qp8tHDN47SHp/rOjz0m1884PZ0gDPjFq9/UbPU3DmjFs
         KOlw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAWO0ifv9o2FXytg9nKEarY7jDCoQXN3ourd/YAPQNx3zsjKl5Kv
	enZ93JqIEpJVsrFlI4MGUtsx2A==
X-Google-Smtp-Source: APXvYqxufpJxKMV+tK5HgQLwrz3cC3OPC/wIxr176u8Ha7zoFM7rn+y8BM9Su9G9vSyiCcCUzb/GVQ==
X-Received: by 2002:a17:902:7687:: with SMTP id m7mr2680103pll.41.1567500384471;
        Tue, 03 Sep 2019 01:46:24 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a63:3043:: with SMTP id w64ls3847230pgw.15.gmail; Tue, 03
 Sep 2019 01:46:23 -0700 (PDT)
X-Received: by 2002:aa7:934f:: with SMTP id 15mr38395403pfn.22.1567500383774;
        Tue, 03 Sep 2019 01:46:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567500383; cv=none;
        d=google.com; s=arc-20160816;
        b=BlU6mddzPYqcYZJ6+gVy2hxraGq18epOvpmsdtiVKrn2mTknugIhvJt6FNDyrsvqvE
         EWIFRp1ymem4xDS0mmaoqsOpP6hhFyyRUC747DrvIPac++5JaRg47MeN/sztLloxyeaw
         I7AxEUFA68/AZ0yDB9jXQlL/rtjURjfXpjTLiZKp3tGXNXwePjW/yHMYvJW/S5PqJ8cX
         8pGmJ0PoqdVeMwVOsfKULz0CyoC9cJ0cJQlmlw2VR68L/zNrem6MxR5fpCjsxXUGeH96
         83Ez/1TuN2ksijxAeGLR/OeVvCt2VjIzlXf+PK39H7lkZNDuskjANAxVk26OkCYA65nL
         XXkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=b70sepwhN8q1iqLMO3aK0ToUTreTjvrdLY0yLnuLs1s=;
        b=PUcaqfCMXNilsSxEe9n7ZDIoyrz11j/lzWao0a6XNOUDwOqrphuxHMV0jD+KypzQgn
         8w8IUuHtMGYLUO3S1Q9+IamG2A4epqzrO1zBXuFrT5d3rQ8ISDBBiJnEUdcwtOVCjNxp
         ohFUY9ux9K5EkLeYgdo8OBePtI2Z3HETyzjdmEAM8NRjb4hNloBEujaM/0r+DG0Ux8yU
         1tiMPS63+Ku22zfk4c8w94kfGT+VI/VkyS8htTQMSIfp3kmRvCj8VVECAoFqfy3ZAUax
         vDwe6ufRx46+pCJrMUCmg0hhRWpv7IOMGsYpYH4Fkr8K5Pm/YTRyrUgMkS28LKJYc65S
         6KDg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=FJTvHrbi;
       spf=pass (google.com: best guess record for domain of batv+680e2818d6643897e706+5854+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+680e2818d6643897e706+5854+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by mx.google.com with ESMTPS id i135si5385817pgd.554.2019.09.03.01.46.23
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Sep 2019 01:46:23 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of batv+680e2818d6643897e706+5854+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from clnet-p19-102.ikbnet.co.at ([83.175.77.102] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
	id 1i54SA-0003qm-UH; Tue, 03 Sep 2019 08:46:19 +0000
From: Christoph Hellwig <hch@lst.de>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Guenter Roeck <linux@roeck-us.net>,
	Lee Jones <lee.jones@linaro.org>
Cc: Alan Stern <stern@rowland.harvard.edu>,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org
Subject: [usb-storage] usb dma_mask fixups
Date: Tue,  3 Sep 2019 10:46:09 +0200
Message-Id: <20190903084615.19161-1-hch@lst.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20170209 header.b=FJTvHrbi;
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

Hi all,

the first patch fixes the ohci-sm501 regression that Guenther reported
due to the platform device dma_mask changes.  The second one ports that
fix to another driver that works the same way.  The rest cleans up
various loose ends left over from the dma related usb changes in the
last two merge windows.

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190903084615.19161-1-hch%40lst.de.
