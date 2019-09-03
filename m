Return-Path: <usb-storage+bncBCUJ7YGL3QFBBJ6UXHVQKGQE73R5MJY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-x545.google.com (mail-pg1-x545.google.com [IPv6:2607:f8b0:4864:20::545])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BE2CA69CF
	for <lists+usb-storage@lfdr.de>; Tue,  3 Sep 2019 15:27:05 +0200 (CEST)
Received: by mail-pg1-x545.google.com with SMTP id b18sf10941982pgg.8
        for <lists+usb-storage@lfdr.de>; Tue, 03 Sep 2019 06:27:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567517223; cv=pass;
        d=google.com; s=arc-20160816;
        b=DhZqXA8uDaMtsoSK4NFf2DgrGtCYgoprTWwwWEwZx3nU8z2Im9QoopPdbxH0gK69al
         ZzVDWFmChv/Zn9sBfK6Z7GIqhGr7n7ZxdARqcRC6GomV6eBYxANA4IDWMOIFSXiSqPcx
         /Sg7jvUCJGqPye3L3Tczzq0eA+c5BBCP6ykAgPcwVwId8kCQgALGxlGSo/bhbCpYqHdV
         OxnJQpvuZll8DHYkNOwaCUYExwPdWV5VWpwLe7ZsLUx8oSRh3xvkbrrZuhWfbZzOeS9a
         9VjFjDpy5k9jUKmFltqEDAQGCWIyqF+otdYtpY8AXMeIauaxPmV5eOCO3w+Na+2CJK4X
         KymA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=IyAnumEaMBuA2kulp85etsErh+kKE9OwWdoeRJ/jfcc=;
        b=tTdwsXZnNKq57ODqK20AlW/l/5x/Eb19iVRKhcC1TsjgvM7XL57sAn/TzReQqcbMXo
         D2y7wofiFkkBlg4z57BHb0sh9CaMjEhPA/neTA+MHpAuY1SSgS2Bs+y/szzrFtczudc+
         WQiRvHaaIczfZ0Hl8lAcURYlKYVTe/2OV2GMAv5BAULU7VvmLygWib6BgWbdJE8z4/id
         vphqTYfUkDxW6CzngbaiexGvgt5oF7+uEu/Kahb2ZBxqEqSkT59SoSjJ3XHtJDFhqS7C
         U4Ee584VjX8ze+u/323KTYzr9pjJLopP5wkOQ7aWBJlO4KlmY0TLmOpo7rC52VQ9Wzbe
         FFDA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=qzyZJNIn;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IyAnumEaMBuA2kulp85etsErh+kKE9OwWdoeRJ/jfcc=;
        b=Q238ZjceipMj/D5LpPwgvdKyN+cQ3+/mvFBRaeFP3BXgZmTjkZvtGFPHwDFSRHpUpU
         7lFU7WH/+dfhtGmgHOBZwRYF/96DYTfV3eWXtuV9ZCtO+Yo+N1CxVsHGcPEAUTXn3i3N
         ghiY/zcUk6AJcH2iTnhqFlqwdqINEtDUjNDwE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=IyAnumEaMBuA2kulp85etsErh+kKE9OwWdoeRJ/jfcc=;
        b=bt3CT4Vr37KAIjoZS6wA/9sPQ1NANA8OcIlZqBzcHCInazKn2kyt4OdVy1zaGpyqVb
         E8ySSRYunsq6pFZkhAtriy2WyJzAO/GwghvyRbjaS83kjNjdtawTMb0JXbkQhDByxtyi
         Cw5RRq5J4p1/Q+vKjV7s47QMEg83oCeUu8Wbnu5i7PPOOafBD+BxLLWNiPN+Kk25r9LS
         bFsgMhCm85gakaYDxaOG9zykDJU3YRE2LynjL4WiwnNEG6Np12qTAQgxHxQgjMWALzj4
         t+aGsOYoEvfbxk1kwy/Otv8c0WBdG7ZOPhbc3kQJe3g8VpkRLt4mScehEcOHt9MLc6Ju
         46Fw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAWZUt0hipBv5Y2/GvTfemRESdn4v1GtMClYyz+hKDAYLnU4OVM9
	hx+/Sv8X4TxN06LaGuVtcH6Exg==
X-Google-Smtp-Source: APXvYqyHN5LPk9+9eGdP5NrOrZ1H/BnX6SKIEBmVfyOKSgajnIjeB40Vbp8pNL14Zwrksy9823qNmQ==
X-Received: by 2002:a62:15c7:: with SMTP id 190mr16794909pfv.107.1567517223762;
        Tue, 03 Sep 2019 06:27:03 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a63:90:: with SMTP id 138ls4005047pga.1.gmail; Tue, 03 Sep
 2019 06:27:03 -0700 (PDT)
X-Received: by 2002:a65:644b:: with SMTP id s11mr20323470pgv.305.1567517223307;
        Tue, 03 Sep 2019 06:27:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567517223; cv=none;
        d=google.com; s=arc-20160816;
        b=vRFaJRdw8nX/TbvgQTNyPj3LQxpIzzFaokcA5ZAs89noKAhW//Rxe760YfzrSqu4Oy
         QdBMZnw3VyY9Lf19VmtJ8AQIsd9y5t+r27E114RDNBUaIWyhOo1hE1s6ELYHt5dE9buJ
         eJCA9CbMfSdMdPblzzAJlmTG+p3ZaHtuwfeXyVloMmJzProKWqmgnsEEEnvH/51IeWHT
         IGP/3MmJRy670/q3n72uMrNTbwbpxkSVhp/P3OOtkQpoNYuMFqmbULc43ykA3MpA1Qea
         goQyekoTjMvdXZo9kAIBYUwKcKP6DGhf+9R9MQ2gBYRG7+BPbkr+vOGiwVlzmv6u8vQC
         1vmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=btVbnNY6dPl9p1cfvHAu0r6sM5c1S2pwxrwgVEGIQ2w=;
        b=ArN/QGuBFklfFzMiIYHO5iucPawQhm+jpvT/tS8CqncoRDqEQJ3weXX55JEm2oAqcp
         epfWk7O1hvmXhOUwxJZPA4mtptQepqbxUZRDPDsEmAUVLqW1Ur9/Y0XOP5qSXoD2ZQbS
         eCPw4kTDgsdMRH3AyeaUkUPVUGA+VDNaY73vaZ6eGTEvpe5PivfzhmTaTcj2PzL+KSpA
         Y7IR3UQRNXk0BTDQB6ElhzfMySTG33kRYpYVbBexfgxA6bVWWxsTQ8SqnpxTYYf0/LFk
         pQTqbZ+bu6Xy5uJu2RuN0Q879ryma8pwvEmRPjVmbhQzSCGqndIQXkl6Zol2jPW4hhMi
         Ooyw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=qzyZJNIn;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by mx.google.com with ESMTPS id j33si10466120pgi.181.2019.09.03.06.27.03
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Sep 2019 06:27:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 9010C23402;
	Tue,  3 Sep 2019 13:27:02 +0000 (UTC)
Date: Tue, 3 Sep 2019 15:27:00 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Christoph Hellwig <hch@lst.de>
Cc: Guenter Roeck <linux@roeck-us.net>, Lee Jones <lee.jones@linaro.org>,
	Alan Stern <stern@rowland.harvard.edu>, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org
Subject: [usb-storage] Re: [PATCH 1/6] usb/ohci-sm501: remove the HCD_DMA flag
Message-ID: <20190903132700.GA15835@kroah.com>
References: <20190903084615.19161-1-hch@lst.de>
 <20190903084615.19161-2-hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190903084615.19161-2-hch@lst.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=qzyZJNIn;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
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

On Tue, Sep 03, 2019 at 10:46:10AM +0200, Christoph Hellwig wrote:
> This driver doesn't support normal DMA, only direct access to its
> local memory.  Remove the HCD_DMA flag to properly express that fact.
> 
> Fixes: 1e4946c4412e ("usb: add a HCD_DMA flag instead of guestimating DMA capabilities")

Wrong sha1.  I fixed it up in my tree.

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190903132700.GA15835%40kroah.com.
