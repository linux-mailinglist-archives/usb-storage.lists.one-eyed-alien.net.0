Return-Path: <usb-storage+bncBD6LRVPZ6YGRBQWAQWPQMGQEM6YROCI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-io1-xd46.google.com (mail-io1-xd46.google.com [IPv6:2607:f8b0:4864:20::d46])
	by mail.lfdr.de (Postfix) with ESMTPS id 0678368C76C
	for <lists+usb-storage@lfdr.de>; Mon,  6 Feb 2023 21:17:08 +0100 (CET)
Received: by mail-io1-xd46.google.com with SMTP id z23-20020a6b6517000000b00718172881acsf7608226iob.7
        for <lists+usb-storage@lfdr.de>; Mon, 06 Feb 2023 12:17:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1675714626; cv=pass;
        d=google.com; s=arc-20160816;
        b=glUe1ER81tG+qrbU0RTvWBI1MuQ2AK6ZxVFXW9baALWD5+6Nd1g0L0S6SxTlBkqQKQ
         ktGXUURY1JiYluZ/cTvN4webabbJb6uRuzXi+kIJdeSIY9mf9prCJf6+i55zZ04XM5l8
         22oW8kIQsFGTNKLc0U7365fNaohJlGZIt/0I8QxVIK/4H4B1JJQt2FQIXDtlvEO/ud6L
         ii5D9ld7ZIzE3ync8RVxV4/L/kwUDEC72vqJX0CYsvesJsLOJcb4vJZ+g7yg9+ZXgAfX
         eK0rK44nX/5AfydteqzxMGZcARfWlJhAdhXv0ELRzZ5wRXFB1tg5jgQmtPB0FBc9WCfh
         6v2A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=c/juZXn+x/5fQJhr9/XTCsxFFBA98q5mqIXddGoR3uM=;
        b=QVtjJkX3WxHvrnWZrQfGSep+9I+QbmPKKqDTJvaJWR4c/WW/dbZjBuO9GDr6HwhiH+
         nX5vQ8GCzgEFWbK9xH50vl37UsxmLMMP4dHweyREjrxukwR3Jf9EwPtzxl4RpgQJS6tG
         O42xyTZq2Ge6G4XEWyM84NI7D9hjV+rcKztAGVyJr0dk/6bqGyuSG+WlFEZNjL3rZkYv
         Rbs1xw2jRKT3yaQqjzplrdAZWxjZK8qiN+WsXYsZ0iBV7o/Sa4au/CddcdrP5K7E8HK8
         GWoHpSobnbf6JgZJuP+DiSbtY8SNZd0qtSGsufx1AV7ykBweSEE0ivZhiPhxDQKFJbCv
         OPRQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+63ebd3e0@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+63ebd3e0@netrider.rowland.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=c/juZXn+x/5fQJhr9/XTCsxFFBA98q5mqIXddGoR3uM=;
        b=RwjqQY02HFCPf4OGowLvcsU94vd1lN6rktaaP+iGkcjUx42PmACcmO5qF3wDSU9boo
         S6uTQDjE8Q+xbLlcd4mtZ2UsY3U/HB3x6faxsG2s7hOXh7kzhReua39FOC+Wq9SSq7Oq
         xGB4d+Si2kfqpKIs3BUzAdGOM0lcQnk5FT6NE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=c/juZXn+x/5fQJhr9/XTCsxFFBA98q5mqIXddGoR3uM=;
        b=mOut4/a967tDEhhFxxwMjE8zLryXnmcdtNLgQikHq03W5xjttiApYIXmuHUgVTE2Wq
         crqjr2giU+r2mjfgsNB1pfcSyCbx4N3erG/hnMQX1+m1KlTHc4jd10aSjUUCdgLX3kNA
         CJ9u5nUp4R+khCuNeweS98m7A5bDNuU87JWtWD+zdn6fZzdtkh2B8vcltgvkV1YloK62
         yvrj3lCH4vVNLnyz9Qc0R0Tpi+Li1CIkT2fvq/IzJKe4gtXPgWfjwyveiNAuu+kyJrJV
         q1aGR1aVFvmK++afjRw7zUd5DtkyjuR2Ug6J4pBmnXjk3gPc4Fal37xeboHU/IE4ErSP
         HaYg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AO0yUKW1UcmuKfGpriDYLbaRRqsn6NcQayI/qEyoYLLHtbjmy1kCWHYI
	eKkeAQZn6oRySh6JvOxfhcJEng==
X-Google-Smtp-Source: AK7set890K3wWjCcwaWiGAkYdf1A5jh/GqF4y5d9m8JaQ+bZNzql7kkYk/jaSOF0uCQNB6FuMp2eTw==
X-Received: by 2002:a02:cb4b:0:b0:3b7:9d19:fec6 with SMTP id k11-20020a02cb4b000000b003b79d19fec6mr265172jap.0.1675714626632;
        Mon, 06 Feb 2023 12:17:06 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6e02:b4c:b0:30c:27a9:a355 with SMTP id
 f12-20020a056e020b4c00b0030c27a9a355ls1158456ilu.3.-pod-prod-gmail; Mon, 06
 Feb 2023 12:17:06 -0800 (PST)
X-Received: by 2002:a05:6e02:216b:b0:310:a3c6:f429 with SMTP id s11-20020a056e02216b00b00310a3c6f429mr493673ilv.9.1675714625957;
        Mon, 06 Feb 2023 12:17:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1675714625; cv=none;
        d=google.com; s=arc-20160816;
        b=dWyVND1sz6HIM87KZlmqLIv/83tHkbpTD5TDrBoGSE/oXdhvGjF4qj0v+rmtwRyF6h
         B2o6lxPtWzsqiIGz1Cr6d1d1AuQPnhEXM/viHpN6LTsICWMWrWFqCLgZQDRCW6tr3w+0
         d1jBiahwDSGK/dB+Fw2JasPpvofuyV14hm6anQMHWfU/QH24IV9JrjZVFjVw3tENzoC7
         eVowLWF+FVqAHgk8Q4e0thXQZm2eWXy+A8EK7sknkp6Oaj3ZdBWK1lf1QgJhpdS/Fq+a
         mYpSKWiMJ3qrSvwo6y1ZTD7vo+A6Sqq6oIpEZw+Q4GKEHcJ2yiXtdlHbM6W+Ms0QmYvK
         VUhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=0ysAUndK3X19JT/+U9wDSOTLH5t5I/LNdoN5XYHz4Sw=;
        b=HTjK43wWvKZMQFVfIw6Jn3NO82a4HNZQpLqdDAP2bc/xSH3S+ziWsDbCpkNOvDt9uM
         XVX0oIf1+G7hVMnfcIOudaW3AzprsmZOCGAkWe+HkQzOBsLtXLQbZnkWgYiLgL4iXIRn
         Ix/7R9O8NudUFhMjFRHtQiL6BM5r9qdRbbWmSJ09nGdL0vyOFkuWuVMGDbmIFacIbDDg
         bgE4GvMU/awIgjzEpc5s2aq8C1QG4AB+bRwyAXV7Thpe9qjekFGeEd181Eb6cZoemGkD
         zjsgzmKiTphTPRbJpktDHwJ2fDJt/4h5igY7kjTiQNIAn4fqTRvRKEpXHLOi1CByebMi
         oTEg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+63ebd3e0@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+63ebd3e0@netrider.rowland.org
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id k5-20020a02c765000000b003ab5fbd49a5si12866830jao.115.2023.02.06.12.17.05
        for <usb-storage@lists.one-eyed-alien.net>;
        Mon, 06 Feb 2023 12:17:05 -0800 (PST)
Received-SPF: pass (google.com: domain of stern+63ebd3e0@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 669200 invoked by uid 1000); 6 Feb 2023 15:17:05 -0500
Date: Mon, 6 Feb 2023 15:17:05 -0500
From: Alan Stern <stern@rowland.harvard.edu>
To: Sergei Shtylyov <sergei.shtylyov@gmail.com>
Cc: Karina Yankevich <k.yankevich@omp.ru>,
  Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
  usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org,
  lvc-project@linuxtesting.org
Subject: [usb-storage] Re: [PATCH] usb: storage: sddr55: avoid integer overflow
Message-ID: <Y+FgQUvhTCxfpJCA@rowland.harvard.edu>
References: <20230203201821.483477-1-k.yankevich@omp.ru>
 <Y91zL8OWTUd8iTXt@rowland.harvard.edu>
 <53bc0584-51eb-8bb7-de48-ca07fccafc19@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <53bc0584-51eb-8bb7-de48-ca07fccafc19@gmail.com>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+63ebd3e0@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+63ebd3e0@netrider.rowland.org
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

On Mon, Feb 06, 2023 at 11:04:54PM +0300, Sergei Shtylyov wrote:
> Hello!
> 
> On 2/3/23 11:48 PM, Alan Stern wrote:
> [...]
> >> We're possibly losing information by shifting an int.
> >> Fix it by adding the necessary cast.
> > 
> > Nonsense.  The card's _total_ capacity is no larger than 128 MB, so a 
> > page address can't possibly overflow an int.
> 
>    Then the 'address' variables shouldn't be declared *unsigned long*, right?
> That should fix the SVACE's report as well. Would you accept such a patch?

Yes.

Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/Y%2BFgQUvhTCxfpJCA%40rowland.harvard.edu.
