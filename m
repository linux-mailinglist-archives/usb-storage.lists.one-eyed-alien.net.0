Return-Path: <usb-storage+bncBCC2JRVCV4NRB2GP6LCAMGQEUHG5KKY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x547.google.com (mail-ed1-x547.google.com [IPv6:2a00:1450:4864:20::547])
	by mail.lfdr.de (Postfix) with ESMTPS id E605AB24CA4
	for <lists+usb-storage@lfdr.de>; Wed, 13 Aug 2025 16:57:46 +0200 (CEST)
Received: by mail-ed1-x547.google.com with SMTP id 4fb4d7f45d1cf-61530559847sf4996306a12.0
        for <lists+usb-storage@lfdr.de>; Wed, 13 Aug 2025 07:57:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1755097065; cv=pass;
        d=google.com; s=arc-20240605;
        b=Qyzqmci6906lVdrJOpBAipbJYomIecWUZfLVNXwPJp7L2ADAp0jI8Dp1iYsJL72Bl/
         iIdrHNzSnx7lDCaVbVYH7bCsN3PEAEXOIFSU0ApXgUUbTH1c2/t5AyIcnd87IBcZKe37
         o4JUqg8A/GKUI4LeJxWeLf5vlvBex7xU73bock0Oi9cJWwxJEt0Rpf9SAh/yjR1+GOCi
         LJtLEGZ4RdkTD14YWA6nuBhLF7JnkknfFUEpSzvwjWDvW5rxJ10EtPMz4dyv+LkrdRl9
         7FNojycte24tIhQD8hVhEVur/sKnxYi2K0PY/DgeXO1FxUf+tc5JfIzCmW6SZwejmexd
         wB2A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:references:message-id:cc:date
         :in-reply-to:from:subject:mime-version:sender:dkim-signature;
        bh=ukS+TNCFxDi5rRhkEPHwcdDML22NwAhPwJfOw6kVTuM=;
        fh=wz2VCNhCKTv0a+m/d7/9+GzxbdTHdYI3TL2mXNqE//s=;
        b=fXll3BfDb4a80elD+uODb9EOH310K3hJv79rQ/n5m9vSVQ8xUeok/xt6ZLdEkHK0JR
         1M2kOxYPUVVfQ/h/qnpYCei6feADG0lsgEZrPNxSt6E+C7f/hyXp/hkiQvuuh0wCYiim
         +L/qAHSO8lwTCjjbcqlFcd5y3OrYrDNt1b5XSxjcjvY7186VT/xUYjJ+1VyRNDC9KnNH
         xOHIQ9JILbn6Dzh+R9OY8h0ltRKWqzsqxprrPZmI5P3ZzoKCAn33NZ63zSUZ91sk7i8V
         n6t7OkJu0NPYNS+aUy9jSmC3tZLbCjynq8pP3rAGeLAqC8sWzdfp84rp3AWUrtKB1t5j
         /i0Q==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linux.dev header.s=key1 header.b=tZk1OJMi;
       spf=pass (google.com: domain of thorsten.blum@linux.dev designates 95.215.58.173 as permitted sender) smtp.mailfrom=thorsten.blum@linux.dev;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linux.dev
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1755097065; x=1755701865; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:to:references:message-id:cc:date:in-reply-to:from
         :subject:mime-version:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ukS+TNCFxDi5rRhkEPHwcdDML22NwAhPwJfOw6kVTuM=;
        b=DFy75ODwnpE9ciV/GTqHVO3Am5XE5efisNMUhC5mjTKIqnM2ZTszfV3nNMXT2/d2q8
         LMSLXsxyTRyVv/tz5bP7TplT27Q1ifLX6bgfVV6zC3AQzAJTxxQiQod98YAy3svTNXbC
         ztXcFAXFc4Ji9fIheQPzdgx30s2oqZM4+97jI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755097065; x=1755701865;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:to:references
         :message-id:cc:date:in-reply-to:from:subject:mime-version
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ukS+TNCFxDi5rRhkEPHwcdDML22NwAhPwJfOw6kVTuM=;
        b=sct6hnimJS9k9T8WQs4sdvRik57uPcLlkOvidfU42DQoJJb5kJum9D3YI5D7WHhse6
         j6+UMB4lv13r4BQsZds40AyKQGV+YXj3HNnByo9yyAfEgFIB/woeGZzAw98kdMNdlalM
         yu3rq6FEY+MQ1zq9iCe0Y248+wakF2wafdLCbTKlus4gnKOsKRTIbwk+dJcwn/1p8Edc
         qbxqNp0kint8/abrYkr+7ZG/1SVEnRH/ewZWGI59m8WpAEmIY2wvMSw0eTJt/Zefetwb
         nWM0RRwTltjXSVaf7X4j6i9yTkylPz8jE/Ycq//+6VFyag6u57JXpZlqhftfwmbcRrZj
         ReWg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCU+WeojRo92AHXiPt4gZZNYRgZ6vzibwC00GkZSmkdTsWqwH+bPE1WBCFoxORATnt45G4UtRg==@lfdr.de
X-Gm-Message-State: AOJu0YxoIg80/jW6h7eBKfAHXEHEx3OcSAyCAapKVFvS0ve/e8gmHWQx
	lqOjijgaRRn6VXzU/WxeS3IS11Hdk4tAye2QiA09GUY/iYJyCNw4E/R+FnivpPGXHUU=
X-Google-Smtp-Source: AGHT+IHrnFQhB9SpHe5AGqtA516X3ebqoxAcIM8wEpfHyAIXMjQ/0aIwiW2+e4dY4qv4c9jSo1gCtQ==
X-Received: by 2002:a05:6402:51c6:b0:618:1ea6:4604 with SMTP id 4fb4d7f45d1cf-6186b76995amr2856086a12.7.1755097065268;
        Wed, 13 Aug 2025 07:57:45 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AZMbMZeAt0zRHQgGatT2VjI1ImE7nitd7dngiVzMo6aEoExbow==
Received: by 2002:a05:6402:2813:b0:615:7125:5fa3 with SMTP id
 4fb4d7f45d1cf-617b1eef0fcls5500876a12.1.-pod-prod-02-eu; Wed, 13 Aug 2025
 07:57:43 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWVSC5tywdQDdEU0oyXrY+Mc+op/xpkUUotGI6ouaRygNZQ32LtZcp3dwvAkLv/5Uf6FCj1lAaaLOMerg==@lists.one-eyed-alien.net
X-Received: by 2002:a17:907:fdc1:b0:afa:1453:6632 with SMTP id a640c23a62f3a-afca4e4c9bamr302169566b.50.1755097062689;
        Wed, 13 Aug 2025 07:57:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1755097062; cv=none;
        d=google.com; s=arc-20240605;
        b=J3rUwSS5vlkC+y8fQtXQ5pU9mNeyPghcErDdJ//1tCsVlEN2vrqnUCTaK5oSccHs9R
         JdTivjPOiWtP2TwmlfNnIQPBfnPCy8eKE6/SVwOJmFVFYVXSQY1spTw8F3ptQjQENkwf
         /wIEGDhn6uxdSlnyWm+DZAP2WxfR2G5ji4wneqe1eEL3/vKdTNPxO+/D41GPiEss7x3C
         h0xfz/9k70GkF48Yogg7+DclvUADRPky2RDjyQd9GaHSkQdg8QnfBdr1nYaks+kBcy1X
         f0m2j0bcx43vjm3rUAnR789TVpHrQSrQc7C5ztpY/5CeE+P534qm+7EDcYU5ilgoRrlh
         Ds7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:dkim-signature;
        bh=ZX0y3XqvMJOpqUkdJGA0oEg4O1RqEHyh9mxsJeg//rU=;
        fh=hUmX5ugHGPrZxDeXlzEaUDaa6fPUfqeCUjEKOcI8bTo=;
        b=YzHUjLlMuWQGi5MgwefDNFifFQ3IP5En40NN8gj8GQGP56SqyivOsuyVWQCWKDbmi2
         YLUdR3cHYlmjnrUaqZffdU7nMMx/lOl1G1uiTdSyxuppGIrXwDtvhZW06iDcBB5bVLtS
         WWQQQSdw/3ny7aQXP7AwxzclKgeSYDOIPmzzIK9eMvDF7MRVJ9k6pjWLnONjdEi12soU
         2i65I8vvZmUiYKpPEblhhYKuosBR6Quw1LR+1nc0tTLqjoYZtmrJ2imTCZXv6Aav2fgN
         TfZtgxWjSXFGUnTOB0DM+CJrDCV1wEbcKN9v4gzQBhy8UUinX1nOQNu9sM5cM6MlmMnT
         rx9A==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linux.dev header.s=key1 header.b=tZk1OJMi;
       spf=pass (google.com: domain of thorsten.blum@linux.dev designates 95.215.58.173 as permitted sender) smtp.mailfrom=thorsten.blum@linux.dev;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linux.dev
Received: from out-173.mta1.migadu.com (out-173.mta1.migadu.com. [95.215.58.173])
        by mx.google.com with ESMTPS id a640c23a62f3a-af91a25a5e1si2029538266b.863.2025.08.13.07.57.42
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Aug 2025 07:57:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of thorsten.blum@linux.dev designates 95.215.58.173 as permitted sender) client-ip=95.215.58.173;
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.700.81\))
Subject: [usb-storage] Re: [PATCH 3/3] usb: storage: realtek_cr: Use correct
 byte order for bcs->Residue
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Thorsten Blum <thorsten.blum@linux.dev>
In-Reply-To: <2025081358-posted-ritzy-bd3f@gregkh>
Date: Wed, 13 Aug 2025 16:57:27 +0200
Cc: Alan Stern <stern@rowland.harvard.edu>,
 wwang <wei_wang@realsil.com.cn>,
 stable@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@suse.de>,
 linux-usb@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net,
 linux-kernel@vger.kernel.org
Message-Id: <FD8853F3-7ED4-48D7-BADE-F69B4B6D3A43@linux.dev>
References: <20250813101249.158270-2-thorsten.blum@linux.dev>
 <20250813101249.158270-6-thorsten.blum@linux.dev>
 <2025081358-posted-ritzy-bd3f@gregkh>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
X-Migadu-Flow: FLOW_OUT
X-Original-Sender: thorsten.blum@linux.dev
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linux.dev header.s=key1 header.b=tZk1OJMi;       spf=pass
 (google.com: domain of thorsten.blum@linux.dev designates 95.215.58.173 as
 permitted sender) smtp.mailfrom=thorsten.blum@linux.dev;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linux.dev
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

On 13. Aug 2025, at 16:39, Greg Kroah-Hartman wrote:
> On Wed, Aug 13, 2025 at 12:12:51PM +0200, Thorsten Blum wrote:
>> Since 'bcs->Residue' has the data type '__le32', we must convert it to
>> the correct byte order of the CPU using this driver when assigning it to
>> the local variable 'residue'.
>> 
>> Cc: stable@vger.kernel.org
> 
> When you have a bugfix, don't put it last in the patch series, as that
> doesn't make much sense if you want to backport it anywhere, like you
> are asking to do here.
> 
> Please just send this as a separate patch, and do the cleanups in a
> different series.

Ok, you can find it here:

https://lore.kernel.org/lkml/20250813145247.184717-3-thorsten.blum@linux.dev/

Thanks,
Thorsten

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/FD8853F3-7ED4-48D7-BADE-F69B4B6D3A43%40linux.dev.
