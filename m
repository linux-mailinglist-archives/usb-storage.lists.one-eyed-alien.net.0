Return-Path: <usb-storage+bncBC27X66SWQMBBGXDSD5AKGQEEP2CKIA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-yb1-xb45.google.com (mail-yb1-xb45.google.com [IPv6:2607:f8b0:4864:20::b45])
	by mail.lfdr.de (Postfix) with ESMTPS id 20ADD250AE6
	for <lists+usb-storage@lfdr.de>; Mon, 24 Aug 2020 23:31:08 +0200 (CEST)
Received: by mail-yb1-xb45.google.com with SMTP id v11sf12158349ybm.22
        for <lists+usb-storage@lfdr.de>; Mon, 24 Aug 2020 14:31:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598304667; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZitvP2wb3PyPAhGjch/VgnWInnQUx5CdWYBRDQdXpeR1W9J1X7gh4LTksckJy4GV46
         fOcbBm+uzIF7bvQMDx2k/cgkCR72JD3DfZBYoQactet2AjiLhkZsqwdF71ju03JqmXAp
         VxFfzzk5Ma0CwxLbFezOxAGIta5Pa/mbeji6UdL++J02aM80Gjshk3bS3ju2DOmcE/Jp
         DzdAmTPg/94pbYr8dkXZ2/iFyTJDz2Q6Xox6jHVKG2qyEJ7jWRU+/mAvW8d44eNeXqY9
         W4wfto6iqOBNYZBQHnDaEvyZpKtWyHaUGoS8k3QBaAKJJk3JUpTOfQUxY/Uumm062cYi
         wk3Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=96LahVhg2x2XESJYpMm3oDLVDkccQjI9bnkQW+VIrjg=;
        b=kDqx076yRKxdfAHaLoZJTa34XS0d6KDY1iOK3OdqGlMkwb+aB2F75VbitqIzAv5WA4
         xPfKKLzdlsKHQMYK5//sO1NarQl3vTkQBAPFlmrouBleMlD6/HrpLag++vQXjy8UPmce
         AdHM0w9qB8XhxrT83qmjRUaRRf8KZdvHelm0XsChQZ9E7VCFWQfTynTZaOxh/bYUuqOk
         ACzzQAphPYcNUy7J8gfr15VITkNqq1C512PT/4NzBIp9sh+Oar4tsIPP/rYeTzP4lf0e
         FYyATWnB6WM2TNJ75gV/pPgh4S9BctAx2dIObWIRZpTMb9ESgmCaCN1Dp3G1BNjWTO6E
         pEjg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=YI7fjXzA;
       spf=pass (google.com: domain of trix@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=96LahVhg2x2XESJYpMm3oDLVDkccQjI9bnkQW+VIrjg=;
        b=OWljHqLrb8FO7eKf8PfRG6nK2r8S+nXOV2RPyRpeOPq3EBLzifgP9MA2pwrlkD6BfU
         2Q8efCnsYKsGvvNwLCP2A1LlxRB2xq0lv3fP2X7KginZ1WBdZbyXR/p2w3Yo+cfuMx2t
         VS5lbpvE1pfK7i5LXNb2J1uq6FnUr2CpLLLPw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=96LahVhg2x2XESJYpMm3oDLVDkccQjI9bnkQW+VIrjg=;
        b=CNrGQNbg2+8uBkcQ3KE5u7jaYIa98pLT1nRxiyJF3PtLKeh9SeDYKy/t65y6C31Z0S
         4HtdbvqpX+WuIbEoiWyjB0Uiu6YajxsAUIXGyzmXXK93B/xfqhv4ue94i+ZkioJE/5bk
         WgQNYE3VJF9g2aXG/sqko4JEvgaU4vgepD+mI9lMX0hRDzmH6HeEaL4OcQMNJJ+m/qyM
         oyH12xrvriDFPg0N17jCLeiKXdbnV25PrhvXcpkryDWfq96At0zVg1bmscqkvXfIhtTD
         o2XQG11owEyZIHoAmXf1O7WtvLLNw6lWtW+ZMiePFg2S/5hmJgOfGEOi7qCfPge/Vik/
         nsrw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM532kkTNYcY28vxla7Jq5M6I/dNeyswTrUsVnUXQJKCeKr5pdQvRg
	Ks590E44tErfYasFq1d0I1CfzA==
X-Google-Smtp-Source: ABdhPJy4/EDL4VeLRHu8NyUUHR05nZd5o3218bfNfNRme3yB1GNmDzJ4pZBBPKoYMT0R3g9cDRn49A==
X-Received: by 2002:a25:4642:: with SMTP id t63mr10615293yba.329.1598304666934;
        Mon, 24 Aug 2020 14:31:06 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6902:70d:: with SMTP id k13ls4382646ybt.9.gmail; Mon, 24
 Aug 2020 14:31:06 -0700 (PDT)
X-Received: by 2002:a25:e681:: with SMTP id d123mr11308997ybh.55.1598304666405;
        Mon, 24 Aug 2020 14:31:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598304666; cv=none;
        d=google.com; s=arc-20160816;
        b=WKkA0R70N/fxdZ+m8a2o0j7/NeQmOtv9eawVYJf7GnMpdDd90wH8Gv3AiJ3Li8JgAr
         cuO8gX/LRc5t/1wg2BabcwiVjo1xDkXzJdspUjcc8Q76al15Jd4eQmQgoBBWN5zwoxKB
         F2hdabC5U3rcKTTbWDs3qbPAEKgTrT5ypAnD9Ahd87UZ7dEEIxm58rrq43RJh/Hka8wZ
         Wo0BTXbQWtRljHfdrQIoaZ2T12zjgwm0Bm+kI1Q5JKGWvok1LDvZsAUvDypDI+Yuub78
         xHVMPYSSs/Gy5NO9+15kf5rkzusrAzLHgJDqV0UmB1aoIER9WezzJVgkHbU/C9UNUeGa
         tq2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=mo3LWlCNiIOFoCmxEjwdUemS1sJZBLVfxAMsdk/Iu6M=;
        b=yul8jOEJLd6KYszNpwXlhu2SBAxfOmdQspD+5wX2eoG6rquxdCcF7UathoWvHl6wsv
         T3IPt+A/41KWy6M/8p/NpC/rk1Y2Iw8qP4hCD5ok961WH+GRAmdWX9CTJiKSLmJWIOyt
         UsPI6JThMeVr9qykWykbVuLjI843EdxlYnKRm1hDXKZim7znEA5DFpDkWwQ7rTgM6E+M
         1cDDSb+JWRJj46cKlsL0pvnoRoRiTqK4b4YKlm6L6SOx+bn8hfcbjknBxVNpd5/13Rg/
         cngNwzvzr6H5atEOuugoFmUbTXWG5UqKWtRGOSq4LgayPrUU/9kGq9x8E4ktt+i6NIpF
         JP6A==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=YI7fjXzA;
       spf=pass (google.com: domain of trix@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [205.139.110.61])
        by mx.google.com with ESMTPS id v200si12001164ybe.91.2020.08.24.14.31.06
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 24 Aug 2020 14:31:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of trix@redhat.com designates 205.139.110.61 as permitted sender) client-ip=205.139.110.61;
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-540-8WcKDjuINj2e1s21oHBf_A-1; Mon, 24 Aug 2020 17:31:04 -0400
X-MC-Unique: 8WcKDjuINj2e1s21oHBf_A-1
Received: by mail-qt1-f198.google.com with SMTP id w1so5245398qto.4
        for <usb-storage@lists.one-eyed-alien.net>; Mon, 24 Aug 2020 14:31:04 -0700 (PDT)
X-Received: by 2002:ac8:1349:: with SMTP id f9mr6839918qtj.24.1598304664004;
        Mon, 24 Aug 2020 14:31:04 -0700 (PDT)
X-Received: by 2002:ac8:1349:: with SMTP id f9mr6839890qtj.24.1598304663686;
        Mon, 24 Aug 2020 14:31:03 -0700 (PDT)
Received: from trix.remote.csb (075-142-250-213.res.spectrum.com. [75.142.250.213])
        by smtp.gmail.com with ESMTPSA id r5sm136684qtd.87.2020.08.24.14.31.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Aug 2020 14:31:03 -0700 (PDT)
Subject: [usb-storage] Re: [PATCH v2] usb: storage: initialize variable
To: Vito Caputo <vcaputo@pengaru.com>
Cc: stern@rowland.harvard.edu, gregkh@linuxfoundation.org,
 linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
 linux-kernel@vger.kernel.org
References: <20200824211027.11543-1-trix@redhat.com>
 <20200824211839.6c7m7yhgd7ffq3g3@shells.gnugeneration.com>
From: Tom Rix <trix@redhat.com>
Message-ID: <c9c4fca2-d04a-1bf9-e90e-9476392c1662@redhat.com>
Date: Mon, 24 Aug 2020 14:31:01 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200824211839.6c7m7yhgd7ffq3g3@shells.gnugeneration.com>
Content-Language: en-US
X-Mimecast-Spam-Score: 0.002
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: trix@redhat.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=YI7fjXzA;
       spf=pass (google.com: domain of trix@redhat.com designates
 205.139.110.61 as permitted sender) smtp.mailfrom=trix@redhat.com;
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


On 8/24/20 2:18 PM, Vito Caputo wrote:
> On Mon, Aug 24, 2020 at 02:10:27PM -0700, trix@redhat.com wrote:
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
>> So set partial on entry to 0.
>>
>> Fixes: 1da177e4c3f4 ("Linux-2.6.12-rc2")
>> Signed-off-by: Tom Rix <trix@redhat.com>
>> ---
>>  drivers/usb/storage/transport.c | 3 +++
>>  1 file changed, 3 insertions(+)
>>
>> diff --git a/drivers/usb/storage/transport.c b/drivers/usb/storage/transport.c
>> index 238a8088e17f..044429717dcc 100644
>> --- a/drivers/usb/storage/transport.c
>> +++ b/drivers/usb/storage/transport.c
>> @@ -414,6 +414,9 @@ static int usb_stor_bulk_transfer_sglist(struct us_data *us, unsigned int pipe,
>>  {
>>  	int result;
>>  
>> +	if (act_len)
>> +		*act_len = 0;
>> +
>>  	/* don't submit s-g requests during abort processing */
>>  	if (test_bit(US_FLIDX_ABORTING, &us->dflags))
>>  		return USB_STOR_XFER_ERROR;
> At a glance this seems odd to me.  If the caller insists on ignoring
> the return value, shouldn't it just initialize partial to zero?
>
> In my experience it's generally frowned upon for functions to store
> results in error paths.

Then maybe v1 is more appropriate.

Else i can spin a v3.

My preference is v1 as it doesn't add any runtime if-checks.

Tom

> Regards,
> Vito Caputo
>

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/c9c4fca2-d04a-1bf9-e90e-9476392c1662%40redhat.com.
