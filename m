Return-Path: <usb-storage+bncBCTPRFE7TUKRBKPX5XUAKGQEY5P25PY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x547.google.com (mail-ed1-x547.google.com [IPv6:2a00:1450:4864:20::547])
	by mail.lfdr.de (Postfix) with ESMTPS id 93A3B5D333
	for <lists+usb-storage@lfdr.de>; Tue,  2 Jul 2019 17:43:37 +0200 (CEST)
Received: by mail-ed1-x547.google.com with SMTP id n49sf19720975edd.15
        for <lists+usb-storage@lfdr.de>; Tue, 02 Jul 2019 08:43:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1562082217; cv=pass;
        d=google.com; s=arc-20160816;
        b=nUjIGdZQz+/GYq5O15hPm0CZmJ+x/HK+VAlkp9yj3dtU7gBAGW8xkdq8qydVH3FTjR
         Sd7radDJvMKTwK6z2PaZCTC94OxQEG2elNI3tgHEW5sQ3Es45BcWmetOB0a7CFDSr0kW
         W21cbgyIrkTNOLYPDVRKzUtRfNp3hLQNRb2HjsimcdEZmJikIFOjZL2zL+hqbRFgMn/r
         TRmJPmWjZP4EXuH//js8ggaUPW8OnFHFw1dHPl9V5cYnXeS2zJwUVHdNt59EtzNhWQbF
         mxhdgxEJJ3VHpAMrW8pPuOC02Okp+24j2yFgubvHee8mIjSv987f1CBj9Hmy4h+vY1SW
         xA4g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :date:cc:to:from:subject:message-id:sender:dkim-signature;
        bh=QjeDpYhL3ZIOnWa1a02kAvUQ3L1SaInZk58ozmDrUIs=;
        b=AdriZnvaJn+65dQifJem2cF3VNGqF1yh6kf+ueahXcfztMb+LGUMQSwBkhMird14zl
         l5pjRAYYnEUoRwDOepbafe8w5WnRUQidXrsG1F6Vu8wcKnAa0K6OgHqn8aSbMR4aMvhy
         3NCodqz72mGbdxZT6SLASPAKMvEthr/Ivh6DUqNeEWrVE+s1hShWZIG4IMUJAvTD9LqE
         s2t5qp9U49RckrjHV0os5KS6L6SIFZe1VBCUQ6Cga+P1GMvHY2Bu2kWqgOft8LwiTiYs
         T6kaFOpK+I4ERwyL2NNRzlbDLpab4KGnsELvJqzqZ8DwnLrlf0xO84CTkh1wdXZRIpni
         vhjg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of oneukum@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=oneukum@suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QjeDpYhL3ZIOnWa1a02kAvUQ3L1SaInZk58ozmDrUIs=;
        b=R3trWNV8oS/WLCEQenzMdQ5HzzaVkmVAgb/neVcquduLQqQNnQ2fbckrS7BripUChV
         ZtnK9Y8yU+zbNeMR6P4h+kkpZP7EDFfn+aZnWIo6QvhaxXW/+xrHtOX+BC01u/UnNtrB
         TdyM3nKqFASt6ox7rn2VdXOh1fUT94IDqqj1I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QjeDpYhL3ZIOnWa1a02kAvUQ3L1SaInZk58ozmDrUIs=;
        b=SlmmpMhM1qiQdxVlxZuQ++wzivUjfHDwTrL5540jlH/1JrT6BxrGgbpfOM1udVAL3y
         uKD/1VMfREaoFPQ2sEzDNiLlUqJH9Sf/PaNkc3qWjbXPoz74wI+vBYQWJcNlqqH/nxsF
         tcedICX+1rbmNdndkdX5qQfJSD8d1A8A3wh9eRr7d2xOIvEoUsz9ex3zheqZ2ResiC4f
         DGVos6SOsNo+1+aaRtsANglJhsZLLNHLxwrgAGSvjw1k1OOdodXOOoaOzxIYgXbJNm/L
         J48jo5/WCSzfTKfbxDUsMQHV28OACRyu9O+2bVL9NHvkn68j3ecB2NbJnpzQV3hREDyQ
         uHAg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAW2hMvJEcYIATcsthUZ/bx5JwA4VMrSsT4WnRetsbFt1uAJGaJb
	qeD/DC+7OS1ouk+2bI0bBPuhFQ==
X-Google-Smtp-Source: APXvYqylvbTFU9+LYJeACMJqdIEcREVjBChWk6NUhDDo2Y98X9muId5eM3wHIBqqEAn+hdjIyuyT+w==
X-Received: by 2002:a17:906:6a87:: with SMTP id p7mr29195440ejr.277.1562082217300;
        Tue, 02 Jul 2019 08:43:37 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:906:6c4:: with SMTP id v4ls3486143ejb.12.gmail; Tue, 02
 Jul 2019 08:43:36 -0700 (PDT)
X-Received: by 2002:a17:906:ece7:: with SMTP id qt7mr5090043ejb.155.1562082216638;
        Tue, 02 Jul 2019 08:43:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1562082216; cv=none;
        d=google.com; s=arc-20160816;
        b=Sj60h/vkmeexAXg2HU7ZKqW5PGBqkEVUnT2PQfYubEaBTeMwQWBtqvxtby7VLXQ4lW
         IMrWhcsHNYnEtngdgXmS7P+Vu81LL+1QDbQjHzNKF7Eqcon6+r2tanunjhngWpmnUtbv
         meHV/LsXFT5xMHNGckf+DdgHL6s7ZI1yGp/chAn4dkgL8jzr73Vy79sLFMCEYG/LE7Hj
         xVhBlwaNjrdmDgOf/HANcANSkQUayBnXF17umAN5Mg3YFa7D8OfVoAtouBx1xtT++sfL
         STyjrUot08FopTz6h7evuUUXxBDTFPPCvf03bn9hiowazhOBaJLuwOu7M1QmD0kTh21U
         F1CA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:date
         :cc:to:from:subject:message-id;
        bh=w4TAjCsXtT1TcidPDEMcSCToc2R2qbW67lhVYG3FnTA=;
        b=kuRUangC0/ic1ivwEPckzaMlkG9cLoMVN308A2SS9Rq6qL4QFfW+LClVHMM6KpeJu4
         +YjxI0SrDnWRgqAUSNmZpPb15Xd36YwASB10RSgCaldoSC6IexmaN210+0vLQB1y4URE
         FPHJs9ssuGIwQI9YUZwF00XF7Ow6xJSBCG2v2bPz640foZ5f1OMmGIC59lCj7lpSm8B5
         4L2hVRh13rEuz5Gop57AtUFDwtkXLkTvnx+kzGIelU/IzQ+dmrmQ2d/5GgWAb1ske/hZ
         6MnrBCImOhKlKScS4hSxaz7qE1q48jEXQj/VbYlUeYu4xsXN4A71WHJEKcP6xQpIkPss
         b/lQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of oneukum@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=oneukum@suse.com
Received: from mx1.suse.de (mx2.suse.de. [195.135.220.15])
        by mx.google.com with ESMTPS id e2si8896507ejb.399.2019.07.02.08.43.36
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Jul 2019 08:43:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of oneukum@suse.com designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
	by mx1.suse.de (Postfix) with ESMTP id 6821CBC40;
	Tue,  2 Jul 2019 15:43:33 +0000 (UTC)
Message-ID: <1562081352.5819.25.camel@suse.com>
Subject: [usb-storage] Re: [PATCH] usb: storage: skip only when uas driver is loaded
From: Oliver Neukum <oneukum@suse.com>
To: JC Kuo <jckuo@nvidia.com>, Greg KH <gregkh@linuxfoundation.org>
Cc: usb-storage@lists.one-eyed-alien.net, stern@rowland.harvard.edu, 
	linux-usb@vger.kernel.org
Date: Tue, 02 Jul 2019 17:29:12 +0200
In-Reply-To: <6e764566-d6f5-c064-cd4d-66261a238d8f@nvidia.com>
References: <20190701084848.32502-1-jckuo@nvidia.com>
	 <20190701085248.GA28681@kroah.com>
	 <8e8e8703-8620-b625-4917-bbb8d999caa4@nvidia.com>
	 <20190702044249.GA694@kroah.com>
	 <f6ed2505-5da9-c217-a052-a19d197c5c8e@nvidia.com>
	 <f43e7ecf-64d5-20d2-0461-85a55fa28a33@nvidia.com>
	 <1562058690.5819.9.camel@suse.com>
	 <6e764566-d6f5-c064-cd4d-66261a238d8f@nvidia.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.26.6
Mime-Version: 1.0
X-Original-Sender: oneukum@suse.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of oneukum@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=oneukum@suse.com
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

Am Dienstag, den 02.07.2019, 22:05 +0800 schrieb JC Kuo:

Hi,

> I don't see the uas issue myself. I was trying to describe a situation that
> user having issue with UAS storage and would like to blacklist uas module when
> the user is not aware of the usb-storage quirks parameter.
> 
> https://marc.info/?l=linux-usb&m=143385909823645&w=2

So we are not meeting the expectations of some users. Ideally we would.
Yet there are things we cannot do.

> UAS capable devices are backward-compatible with legacy Bulk-only protocol.
> Therefore, IMHO, ideally if system software doesn't have UAS support, system

Exact. At compilation time this is a valid consideration.

> software should enable the UAS device with Bulk-only protocol, unless
> usb-storage driver is not there as well.

What you could do, if we cannot change what the kernel does, is
improving documentation. We can at least tell users how it is done
correctly.

	Regards
		Oliver

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/1562081352.5819.25.camel%40suse.com.
