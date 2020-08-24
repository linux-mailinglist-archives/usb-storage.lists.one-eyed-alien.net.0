Return-Path: <usb-storage+bncBC27X66SWQMBB2XZR35AKGQEMG5PHTI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-yb1-xb45.google.com (mail-yb1-xb45.google.com [IPv6:2607:f8b0:4864:20::b45])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D44B24FE98
	for <lists+usb-storage@lfdr.de>; Mon, 24 Aug 2020 15:13:16 +0200 (CEST)
Received: by mail-yb1-xb45.google.com with SMTP id 83sf10680928ybf.2
        for <lists+usb-storage@lfdr.de>; Mon, 24 Aug 2020 06:13:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598274795; cv=pass;
        d=google.com; s=arc-20160816;
        b=sNo58Q0cqGrYZkIV7OC8QsUlrg1p2EjGJQrRDIdrV/8FI4sdOgOmtWqAwZH450y4+5
         SuANXLwoDXFld6pw7fYxMnk6Q0TE8EJm6e2rq99iKRkOiXnte/0sBDma+QHELlbtHi3B
         IHc98EKGYvc7PzXlq41V10g6pFHOx3ATwSgDSBFqL3e3wdnNlcl4laNt9vguF2s1cJtn
         /V66uEq/Qbc+eFi06WeVk6tCTxF2P2Sn8ma9oMnECrllHDI6diA2wik4HMmobJDP8T5x
         S7GIYqOJYIWoRRrf8yDZkXc82qaESgMsWEuvSMbarNX+b5cJiBqsRpVvyOPiSGkQFWMj
         jHrg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=s6dQHAFjfbL8faDsSNxWPFKH2eu5yrEJMIpYcc6YgXI=;
        b=OjougYbKL4r0q0K4BbdoOY4VhUexBVGG/PQ/QkchSur9NP52sh97k9lm+V5d+O3dS+
         8ReTZHNMVKYtzDMRdTrEntV093gaQn7V+ItoaCnzh+/aOmrWJfZNf5acxOqhaGbW8CZP
         fZhqaxSLLUv1TdYsPkmg/5rUh7ORvtHJ0BpZFtYDypR86nUEfwrcF+JKhKLFjtcj+ZTi
         FIa1jN4XOaAJw8lTQQtp7wnDSw8u48Il1Bqh1m+98o2mnT+eysCOeOWRUaqFGG2MuDXp
         Rgg71OXEB+ClZqHGLdHYMNdd6bFQCwccZfYX461Dv4ohx9iDl2pBpa0VEGYcflu91Hz1
         UgdQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=TjgdgI31;
       spf=pass (google.com: domain of trix@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=s6dQHAFjfbL8faDsSNxWPFKH2eu5yrEJMIpYcc6YgXI=;
        b=FXn+nLBWcI9fhYth/d8bg1BN6MVz6Br3n14JAGAnhEfnVgXNF7tZkSQfmdqhB+UoD0
         laqSSF2EbRXW8dzXRMwBTYj2G+o9G+88ezRBttm8eKbqpn5405oTpd7MxCzab5i9n7N2
         ApmcaxKpXwEbUwdtKXs1ks8jRrJQWirP/HQro=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=s6dQHAFjfbL8faDsSNxWPFKH2eu5yrEJMIpYcc6YgXI=;
        b=KV6kB9MpWegcOKqUCe5kFb1U/DEictrDzhS4slU6/pOFe5TJp+ZOYuKZ8G1FgVi6U3
         5R7GZXIsRPetaz8rTWak4Q5pTdZFiopk8iEXh8K0eQ+c/fxaQm76erzoGkgIgRPDl19E
         st0yXon4T7TSUTlgbNWVD7oKgKWBfPxL2yUwMaQAgEpMBQC2NvnKWbj2tQcpy/t1dLKt
         buEwrmUUO+4J5hLHT7xiV9LbrmqXj6mQIOf5E4YA6LPf94GhJnk+g4TBSRKE/8gloTEb
         p2er932mtrk09C8FT6VirXIqCsQNudd5iCYf+jIQnsKM6F5t0cIJLA08jhh3g2/Gh7wI
         hABg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM530L72YKTeb1dr8jnEEnMO1/4Ylv1zgxBGuv++I1ofdU0wN4ID0q
	y1BQ2ptMDv4qlrXUmAp7c3Bywg==
X-Google-Smtp-Source: ABdhPJxBqhFf1bkkiEARcxxPySa6+QlMsoc9pUyvgRjFJIGfFfNngswUFMglI2ufi6N/FRJFgfhcAg==
X-Received: by 2002:a5b:508:: with SMTP id o8mr8157338ybp.43.1598274795383;
        Mon, 24 Aug 2020 06:13:15 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a25:d451:: with SMTP id m78ls3769119ybf.1.gmail; Mon, 24 Aug
 2020 06:13:14 -0700 (PDT)
X-Received: by 2002:a25:d8c3:: with SMTP id p186mr8057874ybg.50.1598274794569;
        Mon, 24 Aug 2020 06:13:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598274794; cv=none;
        d=google.com; s=arc-20160816;
        b=Zjib6JDUhXkEcNsU2e9hQUOnZVMvmHMoUsJBkrqMS0nJDpY9ywI6/CPPx9pVUF21tY
         BBYRhiOE1qyfDoqrDuJeUXReGVbMeEFwh/96Vv6tJRRK5bLMw3qiyjU497IWBuyJ+gS7
         6Upnj6vWRuCDmEHNQ0kDmCQBa14YeXeIr2WKdQDVk/xuHlVt1c0z7Z/9xwPXHZZ+Dqe0
         r6CQFdBfCloP0YUfugXflK9RzzkmSFmHvkUr8qH5d3ansvPHuPe2k80j8NyQk1hbYhMX
         ysPhBYwSmr1wGVPUcSR3WAKhbDkR14JhXm5DOPlfSY+eQ6DdFlJ7oXL2t2OkiuIfE6Zd
         PwhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=M3sp5HeiSrgOhqJfi4HssybU/jSQO1GIn85W057WAgg=;
        b=eHxR1qGbg06TkHN4DvjRXCevZI7FfwrZN9MrrEzn7FpWzyIab+jsxbOYl/dt76A07a
         8cPSShAxlF6oyou/n5kCXCxOW7zI8tJ29U/A1H/Yi5IegcyHH2q/SGNEUxGOwlToTFd9
         IpWR+r84Uxt65NcEthf+8BEOvkXbBZcU8v/FoAZmzSYnS5iXgs9tsCwlZzRslFi27TPC
         34rd3GSrgpvh997ulKFTxaKZvEhiWGBZPuShfGxOwx0/8dFefoCULIeTX3xswQWCO4EL
         wih3omc9xXKwoQUhxGtbhi2FiTcOdGlSmi0m0a47qLTylhwJGHLJ4j2Rthku+Dv/Beuo
         YMiQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=TjgdgI31;
       spf=pass (google.com: domain of trix@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id k7si14186484ybt.76.2020.08.24.06.13.14
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 24 Aug 2020 06:13:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of trix@redhat.com designates 205.139.110.120 as permitted sender) client-ip=205.139.110.120;
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-326-LMtkPVH8NNm4ewbKmTfMqw-1; Mon, 24 Aug 2020 09:13:12 -0400
X-MC-Unique: LMtkPVH8NNm4ewbKmTfMqw-1
Received: by mail-qt1-f200.google.com with SMTP id b1so6718846qto.17
        for <usb-storage@lists.one-eyed-alien.net>; Mon, 24 Aug 2020 06:13:12 -0700 (PDT)
X-Received: by 2002:ad4:4cc3:: with SMTP id i3mr4785569qvz.17.1598274791876;
        Mon, 24 Aug 2020 06:13:11 -0700 (PDT)
X-Received: by 2002:ad4:4cc3:: with SMTP id i3mr4785551qvz.17.1598274791593;
        Mon, 24 Aug 2020 06:13:11 -0700 (PDT)
Received: from trix.remote.csb (075-142-250-213.res.spectrum.com. [75.142.250.213])
        by smtp.gmail.com with ESMTPSA id p34sm11806050qte.79.2020.08.24.06.13.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Aug 2020 06:13:11 -0700 (PDT)
Subject: [usb-storage] Re: [PATCH] usb: storage: initialize variable
To: Alan Stern <stern@rowland.harvard.edu>
Cc: gregkh@linuxfoundation.org, linux-usb@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org
References: <20200822211839.5117-1-trix@redhat.com>
 <20200823004903.GB292576@rowland.harvard.edu>
From: Tom Rix <trix@redhat.com>
Message-ID: <34834bbc-12e5-3fe1-7bb3-7a4c03acb03f@redhat.com>
Date: Mon, 24 Aug 2020 06:13:09 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200823004903.GB292576@rowland.harvard.edu>
Content-Language: en-US
X-Mimecast-Spam-Score: 0.002
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: trix@redhat.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=TjgdgI31;
       spf=pass (google.com: domain of trix@redhat.com designates
 205.139.110.120 as permitted sender) smtp.mailfrom=trix@redhat.com;
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


On 8/22/20 5:49 PM, Alan Stern wrote:
> On Sat, Aug 22, 2020 at 02:18:39PM -0700, trix@redhat.com wrote:
>> From: Tom Rix <trix@redhat.com>
>>
>> clang static analysis reports this representative problem
>>
>> transport.c:495:15: warning: Assigned value is garbage or
>>   undefined
>>         length_left -= partial;
>>                    ^  ~~~~~~~
>> partial is set only when usb_stor_bulk_transfer_sglist()
>> is successful.
>>
>> So initialize to partial to 0.
>>
>> Fixes: 1da177e4c3f4 ("Linux-2.6.12-rc2")
>> Signed-off-by: Tom Rix <trix@redhat.com>
>> ---
>>  drivers/usb/storage/transport.c | 4 ++--
>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/usb/storage/transport.c b/drivers/usb/storage/transport.c
>> index 238a8088e17f..ce920851b1f2 100644
>> --- a/drivers/usb/storage/transport.c
>> +++ b/drivers/usb/storage/transport.c
>> @@ -461,7 +461,7 @@ static int usb_stor_bulk_transfer_sglist(struct us_data *us, unsigned int pipe,
>>  int usb_stor_bulk_srb(struct us_data* us, unsigned int pipe,
>>  		      struct scsi_cmnd* srb)
>>  {
>> -	unsigned int partial;
>> +	unsigned int partial = 0;
>>  	int result = usb_stor_bulk_transfer_sglist(us, pipe, scsi_sglist(srb),
>>  				      scsi_sg_count(srb), scsi_bufflen(srb),
>>  				      &partial);
>> @@ -484,7 +484,7 @@ int usb_stor_bulk_transfer_sg(struct us_data* us, unsigned int pipe,
>>  		void *buf, unsigned int length_left, int use_sg, int *residual)
>>  {
>>  	int result;
>> -	unsigned int partial;
>> +	unsigned int partial = 0;
>>  
>>  	/* are we scatter-gathering? */
>>  	if (use_sg) {
> Yes, this is a bug.  But the right way to fix it is to change 
> usb_stor_bulk_transfer_sglist(): Make it store 0 to *act_len at the 
> start.
>
> That way you change only one localized piece of code, instead of 
> changing multiple callers and leaving a possibility of more errors being 
> added in the future.

I'll respin the patch.

It will exchange the compile time initialization fix for a run time if-check fix.

> Alan Stern
>

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/34834bbc-12e5-3fe1-7bb3-7a4c03acb03f%40redhat.com.
