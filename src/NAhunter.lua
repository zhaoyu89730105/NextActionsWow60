function getNA3Actions(no)
  if(no < 0)then return {};
  elseif(no == 0)then
    return {'136','982','193530','19574','34026','120679','131894','53209','120360','201430','193455','2643','34477'};
  elseif(no == 1)then
    return {'131894','19434','120360','136','34477','982'};
  elseif(no == 2)then
    return {'136','982'};
  end
  return {};
end

NA3ProfileNames = {[0]='兽王猎',[1]='射击猎',[2]='生存猎',};
NA3ProfileDescriptions = {[0]='天赋:3112112--属性:急速>暴击>精通>全能',[1]='天赋:--属性:',[2]='天赋:--属性:溅射>暴击≈全能>精通>急速',};

function NA3Dps()
  W_Log(1,"猎人 dps");
  
	
	
	
  if(W_IsInCombat())then
    if(NA_ProfileNo < 0)then return false; --保命施法
    elseif(NA_ProfileNo == 0)then --兽王猎
      
      if(false
					or NA_Fire(W_HPlevel(NA_Pet)>0 and W_HPlevel(NA_Pet) < 0.5 and not W_HasBuff(NA_Pet, 136, true), '136', NA_Pet) --治疗宠物
					or NA_Fire(W_HPlevel(NA_Pet)<=0, '982', NA_Pet) --复活宠物

      )then return true; end
    elseif(NA_ProfileNo == 1)then --射击猎
      
      if(false
					or NA_Fire(W_HPlevel(NA_Pet)>0 and W_HPlevel(NA_Pet) < 0.5 and not W_HasBuff(NA_Pet, 136, true), '136', NA_Pet) --治疗宠物
					or NA_Fire(W_HPlevel(NA_Pet)<=0, '982', NA_Pet) --复活宠物

      )then return true; end
    elseif(NA_ProfileNo == 2)then --生存猎
      
      if(false
					or NA_Fire(W_HPlevel(NA_Pet)>0 and W_HPlevel(NA_Pet) < 0.5 and not W_HasBuff(NA_Pet, 136, true), '136', NA_Pet) --治疗宠物
					or NA_Fire(W_HPlevel(NA_Pet)<=0, '982', NA_Pet) --复活宠物

      )then return true; end

    end
    if(W_TargetCanAttack()) then  --攻击施法
      if(NA_ProfileNo < 0)then return false;
      elseif(NA_ProfileNo == 0)then --兽王猎
        
				
        
        if(not NA_IsAOE and (false
					or NA_Fire(W_HPlevel(NA_Pet)>0 and W_HPlevel(NA_Pet) < 0.5 and not W_HasBuff(NA_Pet, 136, true), '136', NA_Pet) --治疗宠物
					or NA_Fire(W_HPlevel(NA_Pet)<=0, '982', NA_Pet) --复活宠物
					or NA_Fire(true, '193530', NA_Nil) --野性守护
					or NA_Fire(true, '19574', NA_Nil) --狂野怒火
					or NA_Fire(true, '34026', NA_Target) --杀戮命令
					or NA_Fire(true, '120679', NA_Target) --凶暴野兽
					or NA_Fire(true, '34026', NA_Target) --杀戮命令
					or NA_Fire(NA_isUsableTalentSpell(6,1), '131894', NA_Target) --夺命黑鸦
					or NA_Fire(NA_isUsableTalentSpell(2,3), '53209', NA_Target) --奇美拉射击
					or NA_Fire(NA_isUsableTalentSpell(6,2), '120360', NA_Target) --弹幕射击
					or NA_Fire(NA_isUsableTalentSpell(7,1), '201430', NA_Target) --群兽奔腾
					or NA_Fire(UnitPower(NA_Player)>50, '193455', NA_Target) --眼镜蛇射击

        ))then return true; end

        if(NA_IsAOE and (false
					or NA_Fire(W_HPlevel(NA_Pet)>0 and W_HPlevel(NA_Pet) < 0.5 and not W_HasBuff(NA_Pet, 136, true), '136', NA_Pet) --治疗宠物
					or NA_Fire(W_HPlevel(NA_Pet)<=0, '982', NA_Pet) --复活宠物
					or NA_Fire(true, '193530', NA_Nil) --野性守护
					or NA_Fire(true, '19574', NA_Nil) --狂野怒火
					or NA_Fire(true, '2643', NA_Target) --多重射击
					or NA_Fire(NA_isUsableTalentSpell(6,2), '120360', NA_Target) --弹幕射击
					or NA_Fire(NA_isUsableTalentSpell(7,1), '201430', NA_Target) --群兽奔腾
					or NA_Fire(NA_isUsableTalentSpell(2,3), '53209', NA_Target) --奇美拉射击
					or NA_Fire(true, '120679', NA_Target) --凶暴野兽
					or NA_Fire(true, '34026', NA_Target) --杀戮命令
					or NA_Fire(NA_isUsableTalentSpell(6,1), '131894', NA_Target) --夺命黑鸦
					or NA_Fire(true, '2643', NA_Target) --多重射击

        ))then return true; end
      elseif(NA_ProfileNo == 1)then --射击猎
        
				
        
        if(not NA_IsAOE and (false
					or NA_Fire(NA_isUsableTalentSpell(5,1), '131894', NA_Target) --夺命黑鸦
					or NA_Fire(W_HPlevel(NA_Target) > 0.8 or W_HasBuff(NA_Player, 3045, true), '19434', NA_Target) --瞄准射击
					or NA_Fire(W_HasBuff(NA_Player, 109306, true), '19434', NA_Target) --瞄准射击
					or NA_Fire(NA_isUsableTalentSpell(6,3) and W_HPlevel(NA_Target) < 0.8 and not W_HasBuff(NA_Player, 3045, true), '120360', NA_Target) --弹幕射击
					or NA_Fire(W_HPlevel(NA_Target) < 0.8 and not W_HasBuff(NA_Player, 3045, true), '19434', NA_Target) --瞄准射击

        ))then return true; end

        if(NA_IsAOE and (false
					or NA_Fire(W_HPlevel(NA_Pet) < 0.5 and not W_HasBuff(NA_Pet, 136, true), '136', NA_Pet) --治疗宠物
					or NA_Fire(NA_isUsableTalentSpell(5,1), '131894', NA_Target) --夺命黑鸦

        ))then return true; end
      elseif(NA_ProfileNo == 2)then --生存猎
        
				
        
        if(not NA_IsAOE and (false
					or NA_Fire(W_HPlevel(NA_Pet)>0 and W_HPlevel(NA_Pet) < 0.5 and not W_HasBuff(NA_Pet, 136, true), '136', NA_Pet) --治疗宠物
					or NA_Fire(W_HPlevel(NA_Pet)<=0, '982', NA_Pet) --复活宠物

        ))then return true; end

        if(NA_IsAOE and (false
					or NA_Fire(W_HPlevel(NA_Pet)>0 and W_HPlevel(NA_Pet) < 0.5 and not W_HasBuff(NA_Pet, 136, true), '136', NA_Pet) --治疗宠物
					or NA_Fire(W_HPlevel(NA_Pet)<=0, '982', NA_Pet) --复活宠物

        ))then return true; end
      end
    elseif(UnitCanAssist(NA_Player, NA_Target))then --辅助施法
      if(NA_ProfileNo < 0)then return false;
      elseif(NA_ProfileNo == 0)then --兽王猎
        
				
        if(false
					or NA_Fire(NA_CheckRoles(NA_Target)==1, '34477', NA_Target) --误导

        )then return true; end
      elseif(NA_ProfileNo == 1)then --射击猎
        
				
        if(false
					or NA_Fire(NA_CheckRoles(NA_Target)==1, '34477', NA_Target) --误导

        )then return true; end
      elseif(NA_ProfileNo == 2)then --生存猎
        
				
        if(false

        )then return true; end
      end
    end
  else  --不在战斗中
    if(NA_ProfileNo < 0)then return false; --脱战后补buff，开怪等
    elseif(NA_ProfileNo == 0)then --兽王猎
      
      if(false
					or NA_Fire(W_HPlevel(NA_Pet) < 0.9 and not UnitIsDead(NA_Pet) and not W_HasBuff(NA_Pet, 136, true), '136', NA_Pet) --治疗宠物
					or NA_Fire(NA_IsSolo and W_TargetCanAttack(), '193455', NA_Target) --眼镜蛇射击

      )then return true; end
    elseif(NA_ProfileNo == 1)then --射击猎
      
      if(false
					or NA_Fire(W_HPlevel(NA_Pet) < 0.9 and not UnitIsDead(NA_Pet) and not W_HasBuff(NA_Pet, 136, true), '136', NA_Pet) --治疗宠物

      )then return true; end
    elseif(NA_ProfileNo == 2)then --生存猎
      
      if(false

      )then return true; end
    end
  end
  return false;
end
