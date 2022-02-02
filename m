Return-Path: <usb-storage+bncBD3JNNMDTMEBBT645OHQMGQEWTA3GQA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x447.google.com (mail-pf1-x447.google.com [IPv6:2607:f8b0:4864:20::447])
	by mail.lfdr.de (Postfix) with ESMTPS id 79F1B4A79BF
	for <lists+usb-storage@lfdr.de>; Wed,  2 Feb 2022 21:49:21 +0100 (CET)
Received: by mail-pf1-x447.google.com with SMTP id z29-20020a62d11d000000b004c8f0d5dec9sf215394pfg.4
        for <lists+usb-storage@lfdr.de>; Wed, 02 Feb 2022 12:49:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1643834960; cv=pass;
        d=google.com; s=arc-20160816;
        b=tBTykrajpiwZdJIRT68nnI7lSOzeyh0CtRIsLC5rMEkIphfhLCRjVJSC0Rh/uLYtXZ
         rtQXqQzKmgIgc/swBzyYMCVoNK2MS8dJvFOcmragsnuccEygjweQq0nxfspsONY8X61F
         +8oyuMmIe4YpcD69ngk+KYfbPtw1uFaItf09mtElKdJ/KdTqRemOTnJzbVdGQN0Y1vaQ
         tdln6DhL6qASr/oOJp8dQ1DeiXV/qjYrH8vWtWXwp70tN35E1xRBCBktL/dMKKXF+Onx
         v3IkSyolKdgr1n3CcOAVhXvLKBScQglIlugmcxaU7z6CB3f7aSxZ6kva58hxfjHJlTZc
         zEnw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:dkim-signature;
        bh=hVXHFTzgLKrF//nUAx1vGFdInzyfBEelFsXqZUsVndk=;
        b=MJwtHAaUMSHN1Vjx8pPLCSVAZk3sNyLtKFIDKnQ8ksRSLlZLvIXcGb2/I+Qwf1ig/U
         +kBPagYC7CWMe8d9VrzeqwWW+/K3ScjPGAOtg7mbRTc4fuhWS63BhTiOv9FG5SUpf4b0
         x7OeF8YtVzqMCcfYN1GI9ySkqQeuNRSUG8H1jwVX1PkNre3dyRELE99gmd6Gfe65wsUp
         JRfp9ykqFCmhQWUsnCaH0DOb8AvXpQ0LhSznMqUub1wJl8FPD+CU4gpszznQ80MgO33n
         bK1u3ZubKRyJgGEQsOyBYCWb1v/Iz0vQjR6o/NpaSdnD597Q7K5hEHXUzPAxNyajwKqk
         SpAg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=bart.vanassche@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hVXHFTzgLKrF//nUAx1vGFdInzyfBEelFsXqZUsVndk=;
        b=MBX+WIP88zoaVyjb4eR6omT28xU0GgnxZrOUMis29FwPY5JnLJeV3X5ElTZmhJfe2y
         5drAllV7X1/PL+H0XThtvRv0mebawMoBvl5Tu+wQU3S4VOu8MR/e9We6VXRIo/l/UHfz
         q/K2kS7f5Qb5cF9JTM8RGlNvT6yi5/yBdVmDc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:date:mime-version:user-agent
         :subject:content-language:to:cc:references:from:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=hVXHFTzgLKrF//nUAx1vGFdInzyfBEelFsXqZUsVndk=;
        b=BRDp0WzDoV3niagZaT/BuvknvoSPTYlXf/HA2qKlITnABAf/Ri2T+worRuBus3aa2j
         v9OZtDJJTx1JiJY2l0hgSzHVNwCPYpgd4HVNM+UJB1/62XV77LoSVxTIgEvQWbEbIDFt
         EVt1QxbEvlP3ErlP0eNEt0cNSqObkh+t9ufopipXbi2uRdjKTp7APcxTFbstJVadLu+9
         af09/55FM4lHjjhTnz0qDMuDXfwV3RH/F4S78Oz4YMkgzWrjnuJMgzqfSn+GPbTJnmFJ
         bnTyUAgKYEZRTcaYB9D6NS4JFh9+xm2+EOmrjSKRe/ID/jQMaFQK1h0YQ1OJwBMAQUQ6
         wXZQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM530CRrzszA/4pdhwpmWQtPpniIJnKPHd/xgWG4sV/aqFccb4m+Z9
	JYLn/MsHFvJo1csaMoTF9RiM3w==
X-Google-Smtp-Source: ABdhPJxRVUAsYvvWNFLSkI0ZOZkjGffzMKwra7XkS56cVuG/4CpWV1AIPKB+t3thkzarq0EX38r2bQ==
X-Received: by 2002:a17:90a:f418:: with SMTP id ch24mr10032269pjb.154.1643834959642;
        Wed, 02 Feb 2022 12:49:19 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a65:6709:: with SMTP id u9ls8137198pgf.0.gmail; Wed, 02 Feb
 2022 12:49:18 -0800 (PST)
X-Received: by 2002:a63:565f:: with SMTP id g31mr25696409pgm.167.1643834958531;
        Wed, 02 Feb 2022 12:49:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1643834958; cv=none;
        d=google.com; s=arc-20160816;
        b=Lvdl1UKblrEpsbrkZsHJCwVM7Zqc/QFoqFYNK+B80yO1JetADT6jvVYH7e+oG+jcNf
         3yUBGbGI3Nt74GuIsMhI6xzXCIT3OY4Qk9k2HB4QIjdedEcLM0m9GkwkKcpfYxJVyuMx
         DOAjMvmZQxGuIv2FSmRnwGY1roMLs0+wj8LN/ZNwlQSXTe+d+XyIFY5/IGmC/5UCoVAY
         fRpIq8Jzbh9Vwvp6jQybtlPyJukiDWWMy0w+GI64ntq7JbJH6BIIb4A5C8/ocmoBeon0
         vx0IRKXMzNK7Dfj9b3VnMW2sIeo8Et8PKWpOOu+0TLQyBak/NuzHreWEJmDWp3wfPi96
         bxBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id;
        bh=ySgLiv/89N7mZb1C2sJVu/EoRPqGfXaA+CdN6XIMoeM=;
        b=Ucq0uyxyYdNsK5LjoUBuQ1xaWiBfGhxYGI1mkLSuiM76G60ycY5UmMyIcKRy2naWh3
         JR24LienmuWVrsQKcCIZ0EZIm/+1NkHSs+kUQM9luXaQ2B3W+l+WBH1SauZmPr3TxDlY
         tMUURTt5WzlETpJ6DQH/z4D7iWhhy/M5hJiRfeAmMIIjIz/wbrwfTwus9f0sddw4rlwj
         5zOA52+hufZ945zbCosOLG/U3ijmN9msPuxsC2ezgEaK7mEVVeZQh7KY3RvAjdYg6bqR
         PrrEH7OSfRiLB1kTEh2Fn9a6avqaPJgTi0kkAAHjL0dTsIR5O//rN/gZy7R22UFNjYZA
         LJJA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=bart.vanassche@gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id mw13sor3190556pjb.28.2022.02.02.12.49.18
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Wed, 02 Feb 2022 12:49:18 -0800 (PST)
Received-SPF: pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:a17:90a:eac9:: with SMTP id ev9mr9971160pjb.166.1643834958107;
        Wed, 02 Feb 2022 12:49:18 -0800 (PST)
Received: from ?IPV6:2601:647:4000:d7:feaa:14ff:fe9d:6dbd? ([2601:647:4000:d7:feaa:14ff:fe9d:6dbd])
        by smtp.gmail.com with ESMTPSA id lp17sm7857231pjb.25.2022.02.02.12.49.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Feb 2022 12:49:17 -0800 (PST)
Message-ID: <c8402f76-7397-77c3-232c-c825c52ea826@acm.org>
Date: Wed, 2 Feb 2022 12:49:16 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: [usb-storage] Re: [PATCH 1/2] scsi: Add scsi_done_direct() for
 immediate completion.
Content-Language: en-US
To: Sebastian Andrzej Siewior <sebastian@breakpoint.cc>,
 linux-scsi@vger.kernel.org, linux-usb@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net
Cc: "James E.J. Bottomley" <jejb@linux.ibm.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Alan Stern <stern@rowland.harvard.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <20220201210954.570896-1-sebastian@breakpoint.cc>
 <20220201210954.570896-2-sebastian@breakpoint.cc>
From: Bart Van Assche <bvanassche@acm.org>
In-Reply-To: <20220201210954.570896-2-sebastian@breakpoint.cc>
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

On 2/1/22 13:09, Sebastian Andrzej Siewior wrote:
> -void scsi_done(struct scsi_cmnd *cmd)
> +static bool scsi_done_need_blk_compl(struct scsi_cmnd *cmd)

I'm not happy about the name of this function. The word "need" in the 
function name suggests that this function does not modify any state. 
However, the body of the function shows that it may complete a SCSI 
command. How about renaming the existing scsi_done() function into 
scsi_done_internal() or so and adding a "bool complete_directly" 
argument to that function?

BTW, I only received patch 1/2 but not patch 2/2. Please Cc the 
linux-scsi mailing list for the entire patch series when reposting the 
patch series.

Thanks,

Bart.

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/c8402f76-7397-77c3-232c-c825c52ea826%40acm.org.
