Return-Path: <usb-storage+bncBD3JNNMDTMEBBFVP6GHQMGQEEY636EA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-x545.google.com (mail-pg1-x545.google.com [IPv6:2607:f8b0:4864:20::545])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FE1B4A90B2
	for <lists+usb-storage@lfdr.de>; Thu,  3 Feb 2022 23:30:48 +0100 (CET)
Received: by mail-pg1-x545.google.com with SMTP id 9-20020a630609000000b00368e62dcd17sf520386pgg.15
        for <lists+usb-storage@lfdr.de>; Thu, 03 Feb 2022 14:30:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1643927447; cv=pass;
        d=google.com; s=arc-20160816;
        b=Y776558Dul1K1VFo7uAm9zwhCcu/xkS/W1PIMcNxmp68ee7Gi8vMmc66YQ6KsnNbw7
         ra1hkE7jqQd4cwypuVfweHq4Uq/WmMda4LkCYtsQEjRkrHpqPjGnkBbu+IvW+HuHuswk
         eQOq81gRSXTj/sGMQrwBkgbNGz5BLEkEtPtjQanAXIMYj7o7ZSKzl9KUstSkA4Aa3BhW
         eG1qKvgqcuJ5WhHYaoUWBeQktLNgWAW5CPnyF8J3UHHcRPGJObqBRZvfxAidh4JyUEFJ
         R8s+Y7/0JsPy5NOSKJ+QW40RqXVf9Z3v350bN+f9/bFAJL/FUZLafUvdxAtkbevJAhtR
         kDqw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:dkim-signature;
        bh=dNW+isr/o3Cin63Q9vvHS2qPW84HueG63Psm2mCttb8=;
        b=Uw8okeArLUBvXobhtHpPA5jzDmGl4DmRXb9OJiMmLitpe5OsJ8PxeM/gDsg7djpEk5
         Cmca1BoD8TQ1RF1g5K3oF90+QYd3in2qMiuI1KXQZKMtZS7XId3AJHgJT3pNVmE1+NTN
         lwwIjpLc/qWvJm44FF/1JlEHgCMdJdRVjFxV5XbBKiEICv8bSOVsGG2SPW6c2W54Rvjn
         hBYBKpfbusiSfJryna5x51abon0hAyZe5m9Jucgt1EgX4fWMewqnyzqbqvq+eFKfHsbb
         QH8Henyt5a69BJ7yica+0V4ymavG2Jg0qoKQiKR37h4B3l44ZcSdnzXXnIcQJxg7OaSE
         /2iw==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=bart.vanassche@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dNW+isr/o3Cin63Q9vvHS2qPW84HueG63Psm2mCttb8=;
        b=LcmxFHtmrw/cihiTXIeSWcBysu+oV6bwPzfFhw+6UErpml7rcNU4uJ24DQDf47m1Um
         1itPvpncQyTbzhSoOOkzJLkuPFM1OiHsywccVzNvQDGDFKuch4Mk2F8RCOrJtVYmM8Mj
         BP9wOz9saj4YzVPtTMR5015UvsNKjPcKPZJbg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:date:mime-version:user-agent
         :subject:content-language:to:cc:references:from:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=dNW+isr/o3Cin63Q9vvHS2qPW84HueG63Psm2mCttb8=;
        b=NeS/cJx89mRI2IqntXd26uzOg3O20ZSS49PvUaH/efwzO58uA2wQ51XMhldbS3RohT
         d8Pf6NKM8eAARIS8HEMtGFvDLG5ymtezcsA1AaJwrTiUcPt6yYEsdcnzy5A7SESWEsdu
         j+MhD4+KPST3hq28KnTPkgKSWP0HvtBGyCE6bpxG+0W1GcPzzT06GERWrWbiA33mUWUq
         OgxhFQWgLvEgld1fJjMIc9byMp8bJUWQfn4+Ms/PFZKVEj/RMx5Bhcwj8oJXvXPag+EJ
         fkCYj8OkLTmR0JLdE1UezSnsw+w7LjFaLVithwxTu+ofuRVror8Qp8eigpixvtRdJFVn
         +fqQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM5332cpy075GDhmH4OsoZj4obZcD3xfRQBrpejbuWhITa5uGE3coL
	dDSos23EmZ+o5G9ZoNrqsPmzPA==
X-Google-Smtp-Source: ABdhPJycFtzrn57ZqfxN1aBKh7DyDlFmZ15O+0yXgaH+S/nFUY2v9JY+FyrL4OmUg093fVMfj7JbNg==
X-Received: by 2002:a17:902:ab04:: with SMTP id ik4mr59465plb.23.1643927446930;
        Thu, 03 Feb 2022 14:30:46 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a63:fc26:: with SMTP id j38ls58635pgi.1.gmail; Thu, 03 Feb
 2022 14:30:46 -0800 (PST)
X-Received: by 2002:a05:6a00:17a2:: with SMTP id s34mr285627pfg.72.1643927446019;
        Thu, 03 Feb 2022 14:30:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1643927446; cv=none;
        d=google.com; s=arc-20160816;
        b=qkm2h5w4/gF+KLYXwzY01rRQ9VeG0yh4CpNnS5YSfVkYPoyMOQr4SJYq4N+mIbO9lU
         kwiEC1KTMhv1uWGawexwKTZUSPg79yjhBydYC0EC2gDTBEB9KBl2z36isQiRi8GD+vzf
         SnlzhmoumMVM5P2+yZ5ln81IWMNNgwTz3U6omgZo63beFm0VMeDcC6Tn8JrtzMUs1Dj9
         IaB1QS4WgV0pLIBeWdRkcuecNXhWF+FcRpME0V2iGd6wtJiIlU/XnmVGmVtZVBVyr4FK
         19PxybmTd8819xG51tbRiCQHMq7UNWwx4d6PeB0s6LLK3cCTDekqC32OTQQZVJXFts0m
         ehsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id;
        bh=7laOSOTRIKfgB81WkljSRpQ1Qs5RJtS6DOO8SbNq8dc=;
        b=oBk52UTliClqF4Y3PXITneDeNlxj6cIQanGNbFG0XH/t/w/0by4mF7iQ2lRxqYP6ld
         J14zNL9Dgpw5zsDSXb8RKMHCuvg8vFq5pOsaWv2+gWARei+D3gHFRNvQqKM1+VAgjnbn
         U/4VKG6f8kRvt5f+DMof3MKvcefWve6JYQ5ocmAoEgENzE5t0/L7ztu550JAJtwNUFuk
         Y60Bn9lvy/aP/R8JOB7MPClMd8BQICQas5/GsbroC7JBzQ5kuo25hUT4KxYLoI4iucCs
         yZD7AtPfkvRHlRtK/XzO0P3NlDEKAlvUwQ4wjdLdEt2Btlnz4wt/Xjs1fuwVdWJNKoJg
         6nLQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=bart.vanassche@gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id t66sor80649pfc.102.2022.02.03.14.30.46
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Thu, 03 Feb 2022 14:30:46 -0800 (PST)
Received-SPF: pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:a05:6a00:228e:: with SMTP id f14mr244581pfe.16.1643927445629;
        Thu, 03 Feb 2022 14:30:45 -0800 (PST)
Received: from [192.168.51.110] (c-73-241-217-19.hsd1.ca.comcast.net. [73.241.217.19])
        by smtp.gmail.com with ESMTPSA id f3sm43443pfe.43.2022.02.03.14.30.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Feb 2022 14:30:45 -0800 (PST)
Message-ID: <086ce37e-22d1-a07e-7de5-7cfd927a5c8d@acm.org>
Date: Thu, 3 Feb 2022 14:30:43 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: [usb-storage] Re: [PATCH v2 1/2] scsi: Add scsi_done_direct() for
 immediate completion.
Content-Language: en-US
To: Sebastian Andrzej Siewior <sebastian@breakpoint.cc>
Cc: linux-scsi@vger.kernel.org, linux-usb@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net,
 "James E.J. Bottomley" <jejb@linux.ibm.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Alan Stern <stern@rowland.harvard.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <20220201210954.570896-1-sebastian@breakpoint.cc>
 <20220201210954.570896-2-sebastian@breakpoint.cc>
 <c8402f76-7397-77c3-232c-c825c52ea826@acm.org> <YfwxJPUFCo5/55yI@flow>
 <Yfw7JaszshmfYa1d@flow>
From: Bart Van Assche <bvanassche@acm.org>
In-Reply-To: <Yfw7JaszshmfYa1d@flow>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: bvanassche@acm.org
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of bart.vanassche@gmail.com designates 209.85.220.41 as permitted
 sender) smtp.mailfrom=bart.vanassche@gmail.com
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

On 2/3/22 12:29, Sebastian Andrzej Siewior wrote:
> Let me see what I can do.
> 
> Something like this perhaps? The compiler not inline
> scsi_done_internal() so we maybe provide scsi_done() / _direct() as
> static inlines?

In general declaring a static function inline in a .c file is frowned 
upon but I think in this case we should do that. With that change 
applied, feel free to add:

Reviewed-by: Bart Van Assche <bvanassche@acm.org>

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/086ce37e-22d1-a07e-7de5-7cfd927a5c8d%40acm.org.
