Return-Path: <usb-storage+bncBD3JNNMDTMEBBVUD47WQKGQEXLNPZFY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x647.google.com (mail-pl1-x647.google.com [IPv6:2607:f8b0:4864:20::647])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BCEFEA230
	for <lists+usb-storage@lfdr.de>; Wed, 30 Oct 2019 18:01:12 +0100 (CET)
Received: by mail-pl1-x647.google.com with SMTP id t5sf112818plz.15
        for <lists+usb-storage@lfdr.de>; Wed, 30 Oct 2019 10:01:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572454871; cv=pass;
        d=google.com; s=arc-20160816;
        b=ic2FxHsq6JER5Zzn1XWK6uI6bQxoVDVRndihSHQ4rHcH8YE937PC0qsmb5yUxKX7bI
         OyNP6Xdj/+sRMpogR84sslHkdmFGQi4sUTJ2DedWPb0OP4yFT2v0diHoqVTwf7osI7o4
         mwMF0P0XTgIK/3IEZ+Uu/avy5aSyKbCQicQ6IW6hrMKEIu7mECamtQXy9UnGbcFLkCtw
         XdEiWfkKtRVI8/cypNU8vk6/8fvXiQ9GMtul0idSIhg2tnynRQP1yIZJUFnf83eFK/cP
         H4ppS8H1IM3hDhy08h7RK7Wp7gTAFkMbxMVGvl6TAVn6KLT12u7qNsNqiXJJI1D878Yk
         nM8g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=wqtgLtVCuNUDWh9mkyjKM8X6DxsFFgUtF/zMavW+95g=;
        b=0xBSAH28wQSQ+gEDj3hmnFn4kcsOqeKwryrV1qMRJYz+UJzBoNiQfrzjVYCJFhPeMf
         snVrESV1Kembzji9bCWud9ORvm74sulq8BLgFM4YHWf7P8rdh6H2qYM8sEjkTwnRmAUQ
         IJLKwBAq6A8Ke2Ho90puI/eJMIDGzCCdJr2BWrrjfLzyLZTmOU4HodEZdhg9H2nxB3r3
         pQ/dQyG+KhgTvrdoNQPsm34ZdFnY1WWi54uyh+sBfJYi7GVxyQKmsqzmWDniW8fEpLEw
         nmBSYSAYBpci3fzId+IEoXEjoxP2tU0WQJYyYJVBXqJl8dHniYgvrvlgaA17LHtY2bsU
         2Alw==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=bart.vanassche@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wqtgLtVCuNUDWh9mkyjKM8X6DxsFFgUtF/zMavW+95g=;
        b=KWpCOTaCc8sPVMn0s9IzLiclLBMkorSOKrg3a3CIP8Q/aK2ObvG1L6anK/6qTrJgjQ
         subLTmxFKXdUMvN6BAeZePiSNjBXZsWdipY4zL39Oyjuy3unNl+VyFkuMfZCReCtB5rJ
         Hm7CyLGB57B/nUd9FoPgpLmDTI9kcI6IjP2BI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=wqtgLtVCuNUDWh9mkyjKM8X6DxsFFgUtF/zMavW+95g=;
        b=oVbwS4oGVQQCgDKuRlIMHAc2VkHjVI2n8gAKYK8+eC6bmFpy7TIdTW7xm//6FErkvx
         0JS66+QewJUP2QIryYNt/MkTHIRdBXv78gdX8gfkblBMe6UfpHWyjiL2sp3GT/oprG0i
         nq6dKqBfn399hslVzHUXdZMWapnGevh5IJk1785yHWBZ+e3HYy+eQxuqGDrIjiuaDCwp
         1VMwOX60/8cvUAT7XiQCre8ioNf9wN5w1o0vE1eJLFWwaWTVQ30WueZwD7fYjzMl1Hnq
         B9hqIdqcbIjzGH7vCgnUlKs4ieTIrA0RoZ85qDqlCiDCYH6VB6ycujz6PalrbyhMTXTi
         Ld7A==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAWTPocardpaVciIkvu3N03czxjLjqKxzraLGkvoY5VC3BzWXcBQ
	RlUXGrW3mp1fduZ+ANHuQRU2Hw==
X-Google-Smtp-Source: APXvYqzEGKp7ZlYlD2gGXkDZpEY2VqyBlEVm6JTVADF3XfFdFkN0xmIr9xUc4NlDO2RFBLXYeAOKtQ==
X-Received: by 2002:a63:5949:: with SMTP id j9mr388616pgm.371.1572454871138;
        Wed, 30 Oct 2019 10:01:11 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a63:b304:: with SMTP id i4ls7835232pgf.9.gmail; Wed, 30 Oct
 2019 10:01:10 -0700 (PDT)
X-Received: by 2002:a63:6506:: with SMTP id z6mr432685pgb.65.1572454870344;
        Wed, 30 Oct 2019 10:01:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572454870; cv=none;
        d=google.com; s=arc-20160816;
        b=A2RPPA7h8v0/pMTskCJ7E19vKc79j7RO+fZt5+/b4OciQqbKjAHdjN/8P68dbYaFQd
         HoECJk0UxAOwrIswFRdJpL2TXjmYdjeEzbTHY5lSD8IMCqt5WXVBh0GqOKVmtS6RS0UX
         w9nNm1ZYzJRiWhGQ0sTzg9umAszUWt2wF4gC/Gng6bWQJvsxqb2MA0ALSk9WVb3mVByD
         rQRSdw8MmrrZ57lMNh9PXGFsjPzG+1gzbpwuhVRKnNmPhl+ndjinuccqni47Cyqcp6vg
         BDvG7lppJQINHWLXu5bxeTt1p4jh/altSNcMIgkOZy6+puwqBhZYZ0w7vr2nW3fb1qgL
         NS6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=0Hqv8i+AR9TRYPckK/WGbIykqow54FWDwE946IIRHBc=;
        b=sBJAUCk2SIiKlMe4O5tZWS+QS7WK+0VjWcIv05I+6kG8lxtAFvgqCneQSmclCEnknU
         PzFg6MH2k6lFIpPYma2Sxcsrkld0UJjtoLptgF85+xZZOHQjFkdHktVPt5OvfVqv+R2B
         AizfGei5CpKDFHeh8Zdu6DU+wLqlX7TJI7Aw//hA/x+P0KMDZXf35O31bw8DtggE+mOy
         OtCUUnaVGDXaPu19FnPPidmj0r0Znm3bnXh56MW1nDlJaWY2tPQ1B0sQPgCsxOz2ZvxY
         Eg/kqFFXSxiNK7OYZtua5ukOD+e4wto1PT8wxvGTZWSKe1WrWd4/+flQECuEy154IKZ1
         vmZA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=bart.vanassche@gmail.com
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id bg2sor3497228plb.37.2019.10.30.10.01.10
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Wed, 30 Oct 2019 10:01:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:a17:902:8ecc:: with SMTP id x12mr1135180plo.134.1572454869413;
        Wed, 30 Oct 2019 10:01:09 -0700 (PDT)
Received: from ?IPv6:2620:15c:2c1:200:fb9c:664d:d2ad:c9b5? ([2620:15c:2c1:200:fb9c:664d:d2ad:c9b5])
        by smtp.gmail.com with ESMTPSA id q6sm417225pgn.44.2019.10.30.10.01.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Oct 2019 10:01:08 -0700 (PDT)
Subject: [usb-storage] Re: [PATCH v2] scsi: Fix scsi_get/set_resid() interface
To: Damien Le Moal <Damien.LeMoal@wdc.com>,
 "linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 "usb-storage@lists.one-eyed-alien.net"
 <usb-storage@lists.one-eyed-alien.net>,
 Alan Stern <stern@rowland.harvard.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Justin Piszcz <jpiszcz@lucidpixels.com>
References: <20191030090847.25650-1-damien.lemoal@wdc.com>
 <af516590-58dc-0377-5c54-ac63cffbafc8@acm.org>
 <BYAPR04MB5816D4B866F2E7CC421E8488E7600@BYAPR04MB5816.namprd04.prod.outlook.com>
From: Bart Van Assche <bvanassche@acm.org>
Message-ID: <a33afd2e-a7d6-5584-dc26-79fb8f3d6a97@acm.org>
Date: Wed, 30 Oct 2019 10:01:07 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <BYAPR04MB5816D4B866F2E7CC421E8488E7600@BYAPR04MB5816.namprd04.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: bvanassche@acm.org
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of bart.vanassche@gmail.com designates 209.85.220.65 as permitted
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

On 10/30/19 9:21 AM, Damien Le Moal wrote:
> If you feel strongly about it, I have absolutely no problem with
> dropping the patch. I just would like that it be dropped for the right
> reasons...

Hi Damien,

What I'm wondering about is how the SCSI core should support residual
overflow. Should a new member be introduced in struct scsi_request?
Should resid_len be changed from unsigned int to int or should we
perhaps follow yet another approach?

Thanks,

Bart.

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/a33afd2e-a7d6-5584-dc26-79fb8f3d6a97%40acm.org.
