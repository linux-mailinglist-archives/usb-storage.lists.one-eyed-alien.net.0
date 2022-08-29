Return-Path: <usb-storage+bncBCUJ7YGL3QFBBHECWKMAMGQEKSVTRSQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ej1-x645.google.com (mail-ej1-x645.google.com [IPv6:2a00:1450:4864:20::645])
	by mail.lfdr.de (Postfix) with ESMTPS id 99E7C5A45AE
	for <lists+usb-storage@lfdr.de>; Mon, 29 Aug 2022 11:04:29 +0200 (CEST)
Received: by mail-ej1-x645.google.com with SMTP id ga33-20020a1709070c2100b0074084f48b12sf1962034ejc.7
        for <lists+usb-storage@lfdr.de>; Mon, 29 Aug 2022 02:04:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1661763869; cv=pass;
        d=google.com; s=arc-20160816;
        b=vEhKKaZJg4JyErVZ1gcoK7eA/3BKrm+jSFm0Vjg4DcmvtiB/MEUbaPRwj/11lu39bo
         l5pmgmLPQXzYR+D4NipNIyEctykdanEaRl4Sm02om6Xldz4QV+kMfabnYdRoZsvzUVVZ
         I/bLsx4X4hy30OJojjh6Re4/c0CPc3zeZ83XBlZuT9+QmpKrKtbT0DZr39Q2T75iM4nE
         nMsXK4lfm++dXvF1p5cvH1isvjiCwM/KJVBiUQ1NIgkg3dNKEessHdkynnq9Fa6U1dKj
         m6YzW92tSFyfbnz7oBuiLY6e+WePWaZCxIyJLg6jbtCfIvksnCM2G8cTVRwXj4jlBEYL
         JbJA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=DBKDkHbj5byAqDYzbRwJG5BNce+5UTIVgcMQ+vypeGE=;
        b=TNGkTmWCnaydviHx7yd9zyba0pOjChEUjf6vKOhm9qetXAlCScOQ+cGV1rJ97OwuS3
         4HuOPPjGIE1GUyIJRnEtQi/XjQdVWPtcQQZwTgZ40hCYnJ8kv4vJTA6JiZssGihFNxKh
         OSPH7GBiA41hsSBiwWzkAEB8W1d/Hqw/BdE34dXT2c2Yrm5oHPFDLphBvWZANJhC2b3S
         DnfXFZSKo/oFLKs6ncswpN+10M8QanTfuj11+WJa+sG9FJW61W8IicvlzijzwGZ1SwEi
         ny/p3LavmCFhQTjiaZ4Ur9Xsu6FUXLT7sZQhycu49Cwhlx2k8/UWZnifBPOToJg8yYiS
         IQ3w==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=QAfCjmFe;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc;
        bh=DBKDkHbj5byAqDYzbRwJG5BNce+5UTIVgcMQ+vypeGE=;
        b=gt0PLF9aBpj2qsCaZM9v4T7WO0YEzpW7jNSsgCRyvE5B0rLSKpsNwnPwTgWniLd7T6
         lwLEBirxwCF6FxGq91iwEqcx4hbKSJfo/AILxpZk8vwbVAqQMqZQ5MXazOXjQM9/KOqx
         OyHV9SgJ37lHxryRs498aolVDQvCEbYDTuMWk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-gm-message-state:sender:from:to:cc;
        bh=DBKDkHbj5byAqDYzbRwJG5BNce+5UTIVgcMQ+vypeGE=;
        b=xNcKUoTJVYO3pO26mLz0O1RdMFik9WhR35lgut3WeNUlrW21Jq1m/QiCIkQKegZAYQ
         u8vA+6YSvGtcu39F4dRsNmqx693W3dPBodTtaQwiWtj25sqLIyKoCBAE8J5BPMD+EYYk
         hCuwKM7ryld7mIdMJX7fYjLNLgtqJZjsrM16nyvwpPFU1rammNFLpc82W6Ni/waX5Yhh
         oov7rQKIHZm8BGyVvXS96vAWg5hWE9CYTIn4g/igbR9APpmMbhA1V7R36ir/ZihZCuDR
         sMNnD+419g3Ph/WQbgzDvIdbaXpZC+EooWRfhj5WV+IO9zCC91mMBnUPgWrOLS27sBbt
         ycRA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo0AC4PIILWnKz3STvxWOBIxEMNcGJFJIwVmAvolb9KanbMlgxUY
	qQY01loDWgJtaCXvcrGYHdKntQ==
X-Google-Smtp-Source: AA6agR56d+6FsBx2UkqrUGRPRsN4/fxYVqFWNtbveUCwlpTKnj2+D0lX9b0DjnRVXGcrq6fJ/JfnIQ==
X-Received: by 2002:a17:906:eeca:b0:730:6880:c398 with SMTP id wu10-20020a170906eeca00b007306880c398mr13332760ejb.706.1661763869133;
        Mon, 29 Aug 2022 02:04:29 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:906:1c56:b0:730:6d43:91d with SMTP id
 l22-20020a1709061c5600b007306d43091dls4944490ejg.6.-pod-prod-gmail; Mon, 29
 Aug 2022 02:04:28 -0700 (PDT)
X-Received: by 2002:a17:906:85da:b0:73d:c94b:8996 with SMTP id i26-20020a17090685da00b0073dc94b8996mr12906412ejy.225.1661763850209;
        Mon, 29 Aug 2022 02:04:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1661763850; cv=none;
        d=google.com; s=arc-20160816;
        b=Er8rHn/fjwDwD4C/EVYp7rmY9aR8385wj0zKPLH+PM4aMmKvxj1w91Ud1e/acJJT6N
         MzwcBtxGEIuirwglhbAks61mBB0f+U9uaKu98Np01fpe4FOkBOSuoRrmA8R3iUa3T8QA
         wWVelzSspv8fgLn0TJYo3QDXzn02GCbc3YVd2f4A2j/hf1MvnrpmCEPYBqjuqLUvL+LW
         9HsEywLoIInOxqZQyiA055z9XHy6H5UIh1qIO5F0zHcpTIy5p/x8x9TTHilr+uFrDPG/
         rbqBerOf+JkVtDDnrsueZHp1m3Gfl4Y6dGTX9dGy4ckw6UKUq/eQyidpzowVNche7d7S
         Ixfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Dueawns3ccJENWA1VE4q+ccozmMQUPnz4xMj4q5ggcE=;
        b=pUdP4kc+6PILdyewIhQct/QN64dqZmUmkLk0kX3vJA3JqI+BqS5tPBbMQYn0M+ehRe
         kgbR6Aq6Uu+BqipVw9aiTN0uhb/CJMbZ9sgHT83I2yL8+A4zje3TtOvSW8tjC8j9muK3
         dzzgUraRQduH39nyEDxM4m6lhyJEoLJKkbiB6MdH0snYnICN4Qk1Wvbwtm9es9M6DJ6Q
         WRXBu25PU4xz5UB5bw7etZtMpHxcHrMKIUiuTfwuCBXqv+Re2FqMnamRqN5FNS6JUwj8
         NQYYOIXRBXoUH7ax+b2DNvtcKm9Oas5EQOoBW/1SOtUkAOkuIl1aX/jV5WKDqM+z34x6
         NlVQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=QAfCjmFe;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from ams.source.kernel.org (ams.source.kernel.org. [145.40.68.75])
        by mx.google.com with ESMTPS id oz11-20020a1709077d8b00b00730ac298aa9si6151084ejc.783.2022.08.29.02.04.10
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Aug 2022 02:04:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.68.75 as permitted sender) client-ip=145.40.68.75;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id C15BDB80D8C;
	Mon, 29 Aug 2022 09:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 19B68C433D6;
	Mon, 29 Aug 2022 09:04:07 +0000 (UTC)
Date: Mon, 29 Aug 2022 11:04:05 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Hu Xiaoying <huxiaoying2008@gmail.com>
Cc: usb-storage@lists.one-eyed-alien.net, linux-usb@vger.kernel.org,
	stern@rowland.harvard.edu
Subject: [usb-storage] Re: [PATCH v2] usb: Improves USB2.0 write performance
Message-ID: <YwyBBatyOekM3ulk@kroah.com>
References: <CABd4UjYS4QDozv-RKp3_9XhQec=LO+z9U8+=Oa8=MEFyaeXYhA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CABd4UjYS4QDozv-RKp3_9XhQec=LO+z9U8+=Oa8=MEFyaeXYhA@mail.gmail.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=QAfCjmFe;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 145.40.68.75 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Mon, Aug 29, 2022 at 04:58:57PM +0800, Hu Xiaoying wrote:
> From: Hu Xiaoying <huxiaoying@gmail.com>

<snip>

You can not send html mail to the mailing lists, for patches, it will be
rejected and does not work at all.

Please read the kernel documentation about dealing with email clients.

Also, the above "From:" line does not match your "From:" line on the
email, causing me to automatically reject the submission for obvious
reasons.

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/YwyBBatyOekM3ulk%40kroah.com.
