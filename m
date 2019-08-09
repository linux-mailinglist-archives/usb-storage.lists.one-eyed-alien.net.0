Return-Path: <usb-storage+bncBDU5DXUG4MFRBVUUW7VAKGQEL4NQQKQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wr1-x447.google.com (mail-wr1-x447.google.com [IPv6:2a00:1450:4864:20::447])
	by mail.lfdr.de (Postfix) with ESMTPS id 342C78834C
	for <lists+usb-storage@lfdr.de>; Fri,  9 Aug 2019 21:32:39 +0200 (CEST)
Received: by mail-wr1-x447.google.com with SMTP id t9sf47295446wrx.9
        for <lists+usb-storage@lfdr.de>; Fri, 09 Aug 2019 12:32:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565379159; cv=pass;
        d=google.com; s=arc-20160816;
        b=PT8vX/SAq5TEj8G5L47rhCtM2t6KvBCZMPcJerXudNn790KJuTNPrlzBQSol9d05Cy
         FrPlvzn/ZihTkevBWrWodSMkaBruV9tA8H3ItoTXnELoVDgp/7Cog2SbM562R77KfpXu
         PrARuIu8hgSVanEXev2OUe/JvXjC/4JKcde+7D2S+QjNZ6jCwE91EBrTXF6gEtYVugvq
         kCKUAi+2u0MMTlfuKlnJxV16MAHrc4avkaXyMkxWD+4yXdAO4ppLMaec8ADzCG8oJfLV
         feidG3AQ3Q8rf9g44XWHe8WP8xJ3yjkhxuvmmQK2DglHFR5fzaLnVwqTyGv1sT9ryjIV
         RGSA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:subject:autocrypt:openpgp
         :from:references:cc:to:sender:dkim-signature;
        bh=+3MzP4hW9ra5hHW+32Yo4RVu/JtogFzsmjpcvz0raZM=;
        b=DCl84yS2sTOjGtMHKZZP7qBcpbliLMo6/nQ0qdeqSWDoEum/p/Nz8Bt64t7Z2H5AxQ
         EfP4S+h2dcCdzwctHr2YH8pCRxG/bW/ANbphtvrey7/KoKtAI4U2Jnvsq9R/LG5jvu47
         d05cGTnAdyrofksxtctdMwNxY8Z39l+0Pw+JEdrz/dN7agLtJaKI/tvU8mhkiTdJEoPi
         RaGgceBoZtu8H96GDryx+jh3olCMkPDhAPztDhqqysCyRlPO0VGjT/wWQ+nW+Ofsi0YG
         sJCTLw8CRwEhyiCdC0h+HQtKZrlPWplCw7ERW9+IlzFeVn0uLrscx3mhriwRCrcEL/db
         czjw==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: best guess record for domain of colin.king@canonical.com designates 91.189.89.112 as permitted sender) smtp.mailfrom=colin.king@canonical.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=canonical.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:to:cc:references:from:openpgp:autocrypt:subject:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+3MzP4hW9ra5hHW+32Yo4RVu/JtogFzsmjpcvz0raZM=;
        b=LL9jc0zsIUaisqe2be5Ycb1ZpLrXB74DJob/abNeZoS2UwNIpRo41sDZ1IEvJ4Uii6
         yNm/y9SprwoKkdukOKQ1VAHyI5DIvBw5E4Zpd7Cx5CkgClfq20xXR8UP3Jxn0s1ydqNV
         xa65esnjXTC3W+QhHKNdXYIEXwB5+viAEkl6U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:references:from:openpgp:autocrypt
         :subject:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+3MzP4hW9ra5hHW+32Yo4RVu/JtogFzsmjpcvz0raZM=;
        b=UO65ceWdc7fObzhlFsqapgoH2KshPFKeU7pC3UG9mUsuochIxLVZJ6Z2e1fWzmsOZR
         Qr11sXq14Euq9hbWLLskTbB7Xaey5F2ztfXxOX5lSWTi5FMmoirKK4P8Gu8CAc4iaQa4
         bXneZ2SaH7pth52vMq9u9suD6F1uceTeUPoPfiqpSK4RkvrAHJg4IqNviXGexDw8I70n
         t6g6vSz3IXFJtqdNgCCr3otPArfqyR4gFSXECbkArsQcNZi2UPEUqhyIJwq6u74W8X2Y
         bITNowWsVVGHwf03NeNPKQJU7Dmz6MKtLqtENhUBHC+G8XTdOa/etrQsfmns2yUYxrcm
         QdHQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAVq6Sl9dMoJKiSObiLrvwbeR/ientMhi7iw5fDhDxkk19J/2ord
	PaR14FYW00I9cF+Bdcf02UagKQ==
X-Google-Smtp-Source: APXvYqwZM8Idtj2QqyH949l8vqIV9NJh9Uxxeds/FgyL+VJjaGTmpimtrH3Qqis0O5UH4xz0F3Q8qg==
X-Received: by 2002:a7b:c857:: with SMTP id c23mr13330819wml.51.1565379158890;
        Fri, 09 Aug 2019 12:32:38 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a5d:4982:: with SMTP id r2ls3634103wrq.15.gmail; Fri, 09 Aug
 2019 12:32:38 -0700 (PDT)
X-Received: by 2002:a5d:6606:: with SMTP id n6mr18959235wru.346.1565379158094;
        Fri, 09 Aug 2019 12:32:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565379158; cv=none;
        d=google.com; s=arc-20160816;
        b=IqcBWWSAI6dfKSEI1/75wgu1SlPVaGQ0b1Y1YcYN+XRDbTksOV4wswoAIkCbXXQyaL
         VktpvlAo4qUasOFm2BiWLuTDEn6HiMIYaJBjpizlX1HIlZaDFdUZV74/h2eB+ZVRWdwt
         ABkNcsGSR+yQZmJn37MeML3XCqnsiUNnbSUVPfMSwnxDEZlsVkRsmVIfD5QRDaEZFsRb
         Brpz0+hn1UaHeDoUzF6RVabFpOlKxbcSarWrx6UItQtCZhA3kXwD9oRB95AXfLExeZUW
         JnZPe4BfY78tknDZmei/q4fGV3AhDkQKqK7HMMttdy7yrtEcNyJZjumSSfiCRz0WLTue
         Bgow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:subject:autocrypt:openpgp:from
         :references:cc:to;
        bh=P2DJ4poRTdrfvdmeHwLwusyTb9PO/io2P2JjQHQi7FU=;
        b=UDLoyAvzKD7Av4qCqGOseJDGX4nKqGsCC3vGu4pEiW4LzmW9CX/g4tXYe/D8peyq6r
         R/G2NKcLiMDMu/TxdSB4xugxupA/AaV2gylYTj8ALgPgFc8aL7yGTe5BFdGS2tF+hAVw
         tsMaRbpYH3bb56EsoBJtWLDgJD7S5apwN0ss/ZnLMZ8wj9Bxp5gI7NVUUynTzI30SJjg
         TDeDQyXdpDb9bLbIO2DagmC213DTvX76hHEH3Iyrw7u9UBd8l7yiLOP1L11LuvulUGdn
         tDvQu9f5uiZgyO4KLMRYhmjHm6Q0YKbniZ8X41bagN5u/aibN/SpUNCDizdQs2xBPYVP
         IsSg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: best guess record for domain of colin.king@canonical.com designates 91.189.89.112 as permitted sender) smtp.mailfrom=colin.king@canonical.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=canonical.com
Received: from youngberry.canonical.com (youngberry.canonical.com. [91.189.89.112])
        by mx.google.com with ESMTPS id 2si4617396wmb.76.2019.08.09.12.32.38
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Fri, 09 Aug 2019 12:32:38 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of colin.king@canonical.com designates 91.189.89.112 as permitted sender) client-ip=91.189.89.112;
Received: from 1.general.cking.uk.vpn ([10.172.193.212])
	by youngberry.canonical.com with esmtpsa (TLS1.0:RSA_AES_128_CBC_SHA1:16)
	(Exim 4.76)
	(envelope-from <colin.king@canonical.com>)
	id 1hwAcv-0000mF-EQ; Fri, 09 Aug 2019 19:32:37 +0000
To: Alan Stern <stern@rowland.harvard.edu>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
References: <Pine.LNX.4.44L0.1908091528040.1630-100000@iolanthe.rowland.org>
From: Colin Ian King <colin.king@canonical.com>
Openpgp: preference=signencrypt
Autocrypt: addr=colin.king@canonical.com; prefer-encrypt=mutual; keydata=
 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
Subject: [usb-storage] Re: [PATCH] USB: storage: isd200: remove redundant
 assignment to variable sendToTransport
Message-ID: <b68ee52d-f6d6-c626-3ed7-9b590fb1ed1b@canonical.com>
Date: Fri, 9 Aug 2019 20:32:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <Pine.LNX.4.44L0.1908091528040.1630-100000@iolanthe.rowland.org>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: colin.king@canonical.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 best guess record for domain of colin.king@canonical.com designates
 91.189.89.112 as permitted sender) smtp.mailfrom=colin.king@canonical.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=canonical.com
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

On 09/08/2019 20:29, Alan Stern wrote:
> On Fri, 9 Aug 2019, Colin King wrote:
> 
>> From: Colin Ian King <colin.king@canonical.com>
>>
>> The variable sendToTransport is being initialized with a value that is
>> never read and is being re-assigned a little later on. The assignment
>> is redundant and hence can be removed.
>>
>> Addresses-Coverity: ("Unused value")
> 
> Of what use is that tag to general kernel developers?

This is being informally used so that we can track which bugs are
getting found with specific static analysis tools.  The public coverity
bug reports also have a CID# number.  I'm working on range of coverity
builds (different build configs) that are not public because I can crank
multiple builds per day to find issues.

Colin

> 
>> Signed-off-by: Colin Ian King <colin.king@canonical.com>
>> ---
>>  drivers/usb/storage/isd200.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/usb/storage/isd200.c b/drivers/usb/storage/isd200.c
>> index 2b474d60b4db..28e1128d53a4 100644
>> --- a/drivers/usb/storage/isd200.c
>> +++ b/drivers/usb/storage/isd200.c
>> @@ -1511,7 +1511,7 @@ static int isd200_Initialization(struct us_data *us)
>>  
>>  static void isd200_ata_command(struct scsi_cmnd *srb, struct us_data *us)
>>  {
>> -	int sendToTransport = 1, orig_bufflen;
>> +	int sendToTransport, orig_bufflen;
>>  	union ata_cdb ataCdb;
>>  
>>  	/* Make sure driver was initialized */
> 
> Otherwise:
> 
> Acked-by: Alan Stern <stern@rowland.harvard.edu>
> 
> Alan Stern
> 

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/b68ee52d-f6d6-c626-3ed7-9b590fb1ed1b%40canonical.com.
