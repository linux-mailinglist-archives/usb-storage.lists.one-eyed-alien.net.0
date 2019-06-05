Return-Path: <usb-storage+bncBDR5N7WPRQGRBD654DTQKGQEQBHNDPY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ot1-x348.google.com (mail-ot1-x348.google.com [IPv6:2607:f8b0:4864:20::348])
	by mail.lfdr.de (Postfix) with ESMTPS id 57C3236639
	for <lists+usb-storage@lfdr.de>; Wed,  5 Jun 2019 23:05:21 +0200 (CEST)
Received: by mail-ot1-x348.google.com with SMTP id b1sf69215otk.0
        for <lists+usb-storage@lfdr.de>; Wed, 05 Jun 2019 14:05:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1559768720; cv=pass;
        d=google.com; s=arc-20160816;
        b=p/GqeS7mJPan+gUJKIQpB5EAgn9jYjCpOpmzg0Tjgt/0vKd5Z04UV5HgJB2U17Qgbm
         Xv5PsN+rVcPoHZ5Kyt64f+1mp5WeVtxBvf4By3Lmob5cviRkoLyBVS8rKOFT7wEpY5wc
         JwdkQ1Pe3yBj7xcLNkLjwUI+WykdYVo+4xsOMdpF/dg4Ma+auWbqHUM1O6993hHhiMDA
         bgd2DT7IcPRVi98ITSaOYqpceehTkn/qEhuyhN4ZaN7hPP1RLb1PCYiqcKH0QfWCeJnp
         uhWaisuxx7rPSatqlNI7ymsgx2D994cBayJfAjlczNJ1GFD6yDdDFbmPjmjomkVLMo2v
         ae/w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=0UdUrIp5B9C2XSiTekx9+AoK0ZlQEFa74ITiNAPWUDw=;
        b=RvXbjO50BmOcJOXkNNVzdMrhDsG11JozD879BWG2UM3BrHv8xgvj5BySNHUkOqmdVR
         yd5lo3UM4HPhWAMxRXMFfvjn9OK1fYAbkJwUiGbN/Dy38Wf8daVa3Abkn+nUcUc2to5m
         3tMiLUlhbINYRfhoqSLfwPWKWcmLW+qQH9MM2U6vanrQ6WGWlz5KAhy78P/cY/tyMy8G
         L47DpnWiIPwmCsqXJYPpqla1JhpvXyFYlnmT0WUioRHOvFqeCAWW+SFFZXTwMKy2d0KZ
         S1UHf/gKVb+Ztvh/ZK2ZQuWLEjLmrSMW+biX/tLyiuGJAfTcDbcFijr8ulx3cAYHp4vd
         TzlQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel-dk.20150623.gappssmtp.com header.s=20150623 header.b=F8KuVE0d;
       spf=pass (google.com: domain of axboe@kernel.dk designates 209.85.220.65 as permitted sender) smtp.mailfrom=axboe@kernel.dk
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0UdUrIp5B9C2XSiTekx9+AoK0ZlQEFa74ITiNAPWUDw=;
        b=FdwksHNFF/52Cs1K8X+NegQlpQNH3C7QMD08xRtzdTKc5IslE1GvZnCJy/iFJX6HDW
         47W2eKu2sHqAvZZ4cA7xN2tHAqaVnxSTVxImccvQKlF8CQ2DmM51PITdlXR2xugljdqD
         QwS5UEgDs5VG3P2M11uWREYWz2U9U4jNWadAw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0UdUrIp5B9C2XSiTekx9+AoK0ZlQEFa74ITiNAPWUDw=;
        b=UZqcQNQN1EQ/8TfpYExBVIqEYKtQkaotyUGn8VzVYvW180NXyJfYCm78wl/01P872c
         oQaVvJD498GD4a14Rd3C3sMzmys/QYbOl+uoqGULrkh6IePg5+LEklBEJwa+6TKX9h4S
         5r+6IOQRtc4tVvcMPijOcwcDlydfnuxII0hqqxW8aoPj15OpNF6uoRyg9ayOn1aCS5vV
         qSw0b3hk3FWt9hkOpmTkKfnTI9P7CjsKmuhZrZrzzqvpn8DypYAmifNrY0uk7aWsWc+n
         3gv9f2hsSYQz6JbUYMoqMay6+S+wTnYtEIK/uBJlwUwkx9KL7fOUrZjC+U0msygrryaf
         cm1A==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAVmPhXNtATkRSkXHLmBoMk7pBJkVWB4fBPpCqoN91yz8MGdKOcC
	iCm4NwoLVYGBTPQPJPR+eYg81A==
X-Google-Smtp-Source: APXvYqw2e+wnH4mu/nH2ofC1ODv5M/FLsVr5wtguo6RJQfEyCIi4G563g5Rups57IfWtM1rFzdE0DA==
X-Received: by 2002:a9d:17c6:: with SMTP id j64mr11550477otj.275.1559768720007;
        Wed, 05 Jun 2019 14:05:20 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:aca:c78e:: with SMTP id x136ls502627oif.5.gmail; Wed, 05 Jun
 2019 14:05:19 -0700 (PDT)
X-Received: by 2002:aca:3c87:: with SMTP id j129mr9874982oia.40.1559768719454;
        Wed, 05 Jun 2019 14:05:19 -0700 (PDT)
Received: by 2002:aca:a8c5:0:0:0:0:0 with SMTP id r188msoie;
        Wed, 5 Jun 2019 12:17:21 -0700 (PDT)
X-Received: by 2002:a17:90a:ac11:: with SMTP id o17mr38217572pjq.134.1559762241006;
        Wed, 05 Jun 2019 12:17:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1559762241; cv=none;
        d=google.com; s=arc-20160816;
        b=pPC7j+UPFm5zwIilR2xOfoFYXGfLvaDip7lhRkgjpDWiFcto7OxCZO1jGJe2XWjtOq
         RP7xIQ8kO49aVtkgSY7EezqAUlFm5rfqp6xJ3HgGbrwpxd3u8v1DYU24QqdbRlcvN88R
         +JDYZoB4lsUo7j7pUVPFCh5UqpgU5yIvKwwf5grfOVVH93ldSFd97+o10S81dHAhdxE4
         GvDF6i3H1dd7Jt6Rvwz/06PBv1GCCgRBehceiEUdwnR7HYYVAB5K0DGFfgfO4dvKNNdy
         sFg4bPe5L3q77u6wn8py7ABFbJunZ79zRAUn+zl/bwlZRXcYG+Ey21SwCt/sTiaCAUwt
         Hl1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=dhmtJ4+79vRolYDJuB/HeVo2S5DNUc8fMTsNT6fH0i0=;
        b=IhqaedgupanZ44X0xTkaoy8DLSkG/5sfm+j1R4xPAWpzlzeu9QoMez+VteuYCOw/Jy
         kFs0e8ag+8wJQhWMi5f/Lpc3z8RhRGxO92tzr/tDT2RE9uBxeUJHw5Ks+Y5UC0jeHTRd
         w2bglVIY+a/TOkadEtf4jyZnJz2SNNk5zg8ZcZPXn2YT/JRjId65JG8ykxOGzd58dUde
         fUuI0AAxqDCU1NT9ak4PhlGGXCezOl8k6ICEFP3gfbi4Grwy5Xq8DTRBIrEDz/Cboc5G
         JGVsKWzv+zXLwoXzY6kJrCqYoMtzdBAj8USzjElC8zFewuUj/ysTBFDRe5V55SxHDA5B
         FTsQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel-dk.20150623.gappssmtp.com header.s=20150623 header.b=F8KuVE0d;
       spf=pass (google.com: domain of axboe@kernel.dk designates 209.85.220.65 as permitted sender) smtp.mailfrom=axboe@kernel.dk
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id t1sor9547762pjo.17.2019.06.05.12.17.20
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Wed, 05 Jun 2019 12:17:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of axboe@kernel.dk designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:a17:90a:480d:: with SMTP id a13mr45087965pjh.40.1559762240246;
        Wed, 05 Jun 2019 12:17:20 -0700 (PDT)
Received: from [192.168.1.121] (66.29.164.166.static.utbb.net. [66.29.164.166])
        by smtp.gmail.com with ESMTPSA id u7sm10218273pgl.64.2019.06.05.12.17.17
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 05 Jun 2019 12:17:19 -0700 (PDT)
Subject: [usb-storage] Re: properly communicate queue limits to the DMA layer
To: Christoph Hellwig <hch@lst.de>
Cc: Sebastian Ott <sebott@linux.ibm.com>, Sagi Grimberg <sagi@grimberg.me>,
 Max Gurtovoy <maxg@mellanox.com>, Bart Van Assche <bvanassche@acm.org>,
 Ulf Hansson <ulf.hansson@linaro.org>, Alan Stern
 <stern@rowland.harvard.edu>, Oliver Neukum <oneukum@suse.com>,
 linux-block@vger.kernel.org, linux-rdma@vger.kernel.org,
 linux-mmc@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-scsi@vger.kernel.org, megaraidlinux.pdl@broadcom.com,
 MPT-FusionLinux.pdl@broadcom.com, linux-hyperv@vger.kernel.org,
 linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
 linux-kernel@vger.kernel.org
References: <20190605190836.32354-1-hch@lst.de>
From: Jens Axboe <axboe@kernel.dk>
Message-ID: <591cfa1e-fecb-7d00-c855-3b9eb8eb8a2a@kernel.dk>
Date: Wed, 5 Jun 2019 13:17:15 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190605190836.32354-1-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: axboe@kernel.dk
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel-dk.20150623.gappssmtp.com header.s=20150623
 header.b=F8KuVE0d;       spf=pass (google.com: domain of axboe@kernel.dk
 designates 209.85.220.65 as permitted sender) smtp.mailfrom=axboe@kernel.dk
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

On 6/5/19 1:08 PM, Christoph Hellwig wrote:
> Hi Jens,
> 
> we've always had a bit of a problem communicating the block layer
> queue limits to the DMA layer, which needs to respect them when
> an IOMMU that could merge segments is used.  Unfortunately most
> drivers don't get this right.  Oddly enough we've been mostly
> getting away with it, although lately dma-debug has been catching
> a few of those issues.
> 
> The segment merging fix for devices with PRP-like structures seems
> to have escalated this a bit.  The first patch fixes the actual
> report from Sebastian, while the rest fix every drivers that appears
> to have the problem based on a code audit looking for drivers using
> blk_queue_max_segment_size, blk_queue_segment_boundary or
> blk_queue_virt_boundary and calling dma_map_sg eventually.  Note
> that for SCSI drivers I've taken the blk_queue_virt_boundary setting
> to the SCSI core, similar to how we did it for the other two settings
> a while ago.  This also deals with the fact that the DMA layer
> settings are on a per-device granularity, so the per-device settings
> in a few SCSI drivers can't actually work in an IOMMU environment.
> 
> It would be nice to eventually pass these limits as arguments to
> dma_map_sg, but that is a far too big series for the 5.2 merge
> window.

Since I'm heading out shortly and since I think this should make
the next -rc, I'll tentatively queue this up.

-- 
Jens Axboe

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To post to this group, send email to usb-storage@lists.one-eyed-alien.net.
Visit this group at https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/591cfa1e-fecb-7d00-c855-3b9eb8eb8a2a%40kernel.dk.
For more options, visit https://groups.google.com/a/lists.one-eyed-alien.net/d/optout.
