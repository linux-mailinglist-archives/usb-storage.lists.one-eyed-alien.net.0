Return-Path: <usb-storage+bncBAABBWOK5XUAKGQECUUEKFI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oi1-x245.google.com (mail-oi1-x245.google.com [IPv6:2607:f8b0:4864:20::245])
	by mail.lfdr.de (Postfix) with ESMTPS id EA8755D133
	for <lists+usb-storage@lfdr.de>; Tue,  2 Jul 2019 16:08:26 +0200 (CEST)
Received: by mail-oi1-x245.google.com with SMTP id 186sf6595271oid.17
        for <lists+usb-storage@lfdr.de>; Tue, 02 Jul 2019 07:08:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1562076505; cv=pass;
        d=google.com; s=arc-20160816;
        b=j7tJCk8EiaBS9HtwQPKKbrLRWlNXlHmu6yTFjEmlMc58z4Zvz6z7U0y7XURfCVqT6Q
         tBqqKwYQYH+HZOLWfmhxv6pJ+6Lbd4akd9mjt7keaM7TIrQ2dFx7PU2ymYhaN+Q0CZ1l
         zV9RlVqcbs2hHZn2PwnI8PuXXtxsV7CNMO51Q2BJrHusPulwlBTMKFsDiubOLViqr+IF
         5vzqmdhe0NV4nd2+RfnyElGg5M4ChdL6gsJOVf3v1maSXPLuR6i8qe5Q1dSpfUpXj2ge
         zEed/JFwH6CQXucnaJxGAJuL+AKjUVR7YkmRkSHkfLMbo1Ibmtj81wcG9C4q8skJ2BQL
         zWWw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=8Jfp3y0gFGI6CXFyIasY1rUTY/6Sb9P/IxUi5nlMeyE=;
        b=dlLiWLB89/0UZ/NlqAesPJHKfB+X3wgZ0H7hrpjv+3EcoKTWeKTI7g+4EFadRbRJUS
         eK6E5xCQ7yMkoq4tmjfCHp64uBvpVbSVEof8OxE2U4aPYy2+BwuWgyCTdXrhjbYidFFa
         +r3RRwRTCpSvHApicqQ4GI9o6fZ2Ow3bOAuTaZ/lghyznW+dckJsirae7lVTW/TEdraK
         w7PQts5GvkbO50ccm6yIIsXwb4vW2X22tNpmelJb5zaT31QkP+3z+mj8ylfNqmtrKswB
         xm5NUs5fTBX2/ETLSs5Nz9/iUtlJwiKcpxPq+fBW0Ew9CKj8HyTQse4S65DB1kc16tjL
         62WQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=0e1+IcL+;
       spf=pass (google.com: domain of shuah@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=shuah@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8Jfp3y0gFGI6CXFyIasY1rUTY/6Sb9P/IxUi5nlMeyE=;
        b=UDq/Vuu7EmPIQGIaBop99tf/LTzW+GBtY+V3rqyXeJyYC5g2KnEtecBtwqWTMoCl9U
         qTQYfYKVuQxOBjUciTnRtppRAXM8dKQRf7roGrQ7TzSG9JECXRPmnGvHQBrASKCVz+6Z
         YxuczSvEwf+Y0HgrshL/u9YEw4gROPJXV1vw0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8Jfp3y0gFGI6CXFyIasY1rUTY/6Sb9P/IxUi5nlMeyE=;
        b=dZSf53xD4USq5RjDAsDI2xtZY3VwvrxXcysGHtFytbqN/KnWkyloLqBUQREMRqNMTh
         k/purvGcfcdsCBqhrwp7xRE7vmvGaJm//V9tEAqzscVji3Jbr1J5fil0gBx1QYtg4v2a
         8/74CMJziQPnFQl9SkxGjUiimGxiCvNxglfZ2cKjFHwGZzCR/9FEN+gxl9hbFqVxabrF
         WXmXRKCyL2fbIYbGZtK1sbYEgJhXiBaKk9rehokW8Z/QrpGdjz+W7g1g9EjTSv/MC5n6
         WS6oABk1wlJQzKlle863sv7iXFTbqxZ6Qf3NPLAKAomg7AliWe4FSU2EHzMCjL+Gvq5o
         rsAw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAX6Ys97N9Nz6ZBbD8db01MYHVQkNAIxgGAqmXyruMER01IYsmIB
	n/6QOTt9oqhrnV8r+0ikHh0wgA==
X-Google-Smtp-Source: APXvYqyQSbTgtK9Gla0RS8rx4NE4/fEAlXFFm6sVEd4FyHqBBBWHvZ+l1/wHyoA+gf26jILV+RVfnQ==
X-Received: by 2002:a05:6830:1384:: with SMTP id d4mr22751122otq.246.1562076505421;
        Tue, 02 Jul 2019 07:08:25 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a9d:6d09:: with SMTP id o9ls1179056otp.7.gmail; Tue, 02 Jul
 2019 07:08:25 -0700 (PDT)
X-Received: by 2002:a9d:6d06:: with SMTP id o6mr20722315otp.225.1562076505294;
        Tue, 02 Jul 2019 07:08:25 -0700 (PDT)
Received: by 2002:aca:ec83:0:0:0:0:0 with SMTP id k125msoih;
        Tue, 2 Jul 2019 07:06:56 -0700 (PDT)
X-Received: by 2002:a17:90a:8c90:: with SMTP id b16mr5785310pjo.133.1562076416699;
        Tue, 02 Jul 2019 07:06:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1562076416; cv=none;
        d=google.com; s=arc-20160816;
        b=yXtJ62ZBAROqEvUqDRT2MERoG4AXk0JKbupctFi33GEdMh3adW4So7JcaRsgBitOC8
         He7gB9KtnhzU5QC7CWAW+7gMv081ng4QCi6AjA51wDvf61Bq5uXwADswczqzQTjGrGUr
         9Rs+g3nQwEscn7qN+HMWnogccekydrT5dljaUklqu6AgH4Ib34UPu/K3CVcw2yE+UMj2
         4dpCNc0Wz6YjpylvuysXMEWAE2lekHUucqnJyuYbAFUPq8MjgaDs3KAyz+DnQGDZ6Olu
         UkOx452y0SKu4C8P8WKsWO+TiWf3IDE/7RkP9zzczrmaEFcE8hKnhGlSNriGhMRydRr1
         orog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=HzpXN10ANLIswHnZ8kS4VYEuvuhowos7+GhkctN4SD8=;
        b=kWegejD/3fhgLWOhSSKHojRaDS/tABg1qZ9H59TZTDCk5lMWOQ3yeIRzJNGGwjwcnt
         iQnlOtdVeYHkrZ9DJh9NbEBrUUtdTzj78m7v3QXGCNKbAysf/pOBFp3za57Ju1xZRX+F
         poyQBZwZ68v/KGJac1umrz1ggTnKGA6lFry51tGLA0a165K/zU/zWEAD+494aQyNqy17
         1De05z/6BM5If8xeFoXhZEQLjN6+8hP94D4uBOP/HcuExnSkFqpxqOvyiMzOxaGfb1nO
         qXYF+UyzL9SSznwKddFvYoC+dEA0y2cfW3/fNawn8BUEmZbwWN4FXJGJYrL/cGdzWLoP
         UYWQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=0e1+IcL+;
       spf=pass (google.com: domain of shuah@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=shuah@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by mx.google.com with ESMTPS id s11si12234102pgp.326.2019.07.02.07.06.56
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Jul 2019 07:06:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of shuah@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from [192.168.1.112] (c-24-9-64-241.hsd1.co.comcast.net [24.9.64.241])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id DFEAD2146F;
	Tue,  2 Jul 2019 14:06:55 +0000 (UTC)
Subject: [usb-storage] Re: [PATCH v2] usb-storage: Add a limitation for blk_queue_max_hw_sectors()
To: Suwan Kim <suwan.kim027@gmail.com>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Alan Stern <stern@rowland.harvard.edu>
Cc: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 "usb-storage@lists.one-eyed-alien.net"
 <usb-storage@lists.one-eyed-alien.net>,
 "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
 Christoph Hellwig <hch@lst.de>, shuah <shuah@kernel.org>
References: <20190613171112.GA22155@lst.de>
 <Pine.LNX.4.44L0.1906131317210.1307-100000@iolanthe.rowland.org>
 <OSBPR01MB359051D6F83101432E0F2549D8EB0@OSBPR01MB3590.jpnprd01.prod.outlook.com>
 <20190617062222.GA5069@lst.de>
 <TYAPR01MB454412603157D6DDCB512092D8F80@TYAPR01MB4544.jpnprd01.prod.outlook.com>
 <20190702134952.GA2414@localhost.localdomain>
From: shuah <shuah@kernel.org>
Message-ID: <eceb266f-618d-f27c-b103-da15d6001be1@kernel.org>
Date: Tue, 2 Jul 2019 08:06:47 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190702134952.GA2414@localhost.localdomain>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: shuah@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=0e1+IcL+;       spf=pass
 (google.com: domain of shuah@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=shuah@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On 7/2/19 7:49 AM, Suwan Kim wrote:
> On Tue, Jul 02, 2019 at 10:07:42AM +0000, Yoshihiro Shimoda wrote:
>> Hi Alan, shuah, Suwan,
>>
>>> From: Christoph Hellwig, Sent: Monday, June 17, 2019 3:22 PM
>>>
>>> On Mon, Jun 17, 2019 at 04:17:43AM +0000, Yoshihiro Shimoda wrote:
>>>> Thank you for the comments. So, should I wait for getting rid of the
>>>> virt_boundary_mask stuff? If I revise the commit log of this patch,
>>>> is it acceptable for v5.2-stable as a workaround? In other words,
>>>> I worry about this issue exists on v5.2-stable.
>>>
>>> It does exist on 5.2-stable and we should fix it.  I'll plan to resend
>>> my series to fix the virt_boundary issues for the other SCSI driver
>>> soon, but we'll still need to sort out usb-storage.
>>
>> I guess that getting rid of the virt_boundary_mask stuff [1] needs more time.
>> So, for v5.2-stable, would you accept my patch as a workaround?
>> JFYI, v5.2-rc7 still has this "swiotlb buffer is full" issue.
> 
> Hi, Yoshihiro,
> 
> I have been implementing v2 of this patch according to Alan's comment
> (allocate small buffers and urbs instead of one big buffer) and it
> takes some time. The implementation is almost done but I think it
> will take a few days or more because of the test and bug fix...
> 
> Regards
> 
> Suwan Kim
> 

Hi Yoshihiro,

Suwan's patch series will definitely won't make it before 5.2 comes
out. There is not enough time for that. Please send you work-around.


Suwan,

I figured you have been working on Alan's feedback on your patch series.
Thanks for working on the fixing the problem.

thanks,
-- Shuah

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/eceb266f-618d-f27c-b103-da15d6001be1%40kernel.org.
